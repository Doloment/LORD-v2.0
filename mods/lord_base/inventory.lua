lord_base = {
	pages = {},
	pages_unordered = {},
	contexts = {},
	enabled = true
}

function lord_base.register_page(name, def)
	assert(name, "Invalid sfinv page. Requires a name")
	assert(def, "Invalid sfinv page. Requires a def[inition] table")
	assert(def.get, "Invalid sfinv page. Def requires a get function.")
	assert(not lord_base.pages[name], "Attempt to register already registered sfinv page " .. dump(name))

	lord_base.pages[name] = def
	def.name = name
	table.insert(lord_base.pages_unordered, def)
end

function lord_base.override_page(name, def)
	assert(name, "Invalid sfinv page override. Requires a name")
	assert(def, "Invalid sfinv page override. Requires a def[inition] table")
	local page = lord_base.pages[name]
	assert(page, "Attempt to override sfinv page " .. dump(name) .. " which does not exist.")
	for key, value in pairs(def) do
		page[key] = value
	end
end

function lord_base.get_nav_fs(player, context, nav, current_idx)
	-- Only show tabs if there is more than one page
	if #nav > 1 then
		return "tabheader[0,0;lord_base_nav_tabs;" .. table.concat(nav, ",") ..
				";" .. current_idx .. ";true;false]"
	else
		return ""
	end
end

local theme_inv = [[
		list[current_player;main;0,4.7;8,1;]
		list[current_player;main;0,5.85;8,3;8]
	]]

function lord_base.make_formspec(player, context, content, show_inv, size)
	local tmp = {
		size or "size[8,8.6]",
		lord_base.get_nav_fs(player, context, context.nav_titles, context.nav_idx),
		content
	}
	if show_inv then
		tmp[#tmp + 1] = theme_inv
	end
	return table.concat(tmp, "")
end

function lord_base.get_homepage_name(player)
	return "lord_base:crafting"
end

function lord_base.get_formspec(player, context)
	-- Generate navigation tabs
	local nav = {}
	local nav_ids = {}
	local current_idx = 1
	for i, pdef in pairs(lord_base.pages_unordered) do
		if not pdef.is_in_nav or pdef:is_in_nav(player, context) then
			nav[#nav + 1] = pdef.title
			nav_ids[#nav_ids + 1] = pdef.name
			if pdef.name == context.page then
				current_idx = #nav_ids
			end
		end
	end
	context.nav = nav_ids
	context.nav_titles = nav
	context.nav_idx = current_idx

	-- Generate formspec
	local page = lord_base.pages[context.page] or lord_base.pages["404"]
	if page then
		return page:get(player, context)
	else
		local old_page = context.page
		local home_page = lord_base.get_homepage_name(player)

		if old_page == home_page then
			minetest.log("error", "[lord_base] Couldn't find " .. dump(old_page) ..
					", which is also the old page")

			return ""
		end

		context.page = home_page
		assert(lord_base.pages[context.page], "[lord_base] Invalid homepage")
		minetest.log("warning", "[lord_base] Couldn't find " .. dump(old_page) ..
				" so switching to homepage")

		return lord_base.get_formspec(player, context)
	end
end

function lord_base.get_or_create_context(player)
	local name = player:get_player_name()
	local context = lord_base.contexts[name]
	if not context then
		context = {
			page = lord_base.get_homepage_name(player)
		}
		lord_base.contexts[name] = context
	end
	return context
end

function lord_base.set_context(player, context)
	lord_base.contexts[player:get_player_name()] = context
end

function lord_base.set_player_inventory_formspec(player, context)
	local fs = lord_base.get_formspec(player,
			context or lord_base.get_or_create_context(player))
	player:set_inventory_formspec(fs)
end

function lord_base.set_page(player, pagename)
	local context = lord_base.get_or_create_context(player)
	local oldpage = lord_base.pages[context.page]
	if oldpage and oldpage.on_leave then
		oldpage:on_leave(player, context)
	end
	context.page = pagename
	local page = lord_base.pages[pagename]
	if page.on_enter then
		page:on_enter(player, context)
	end
	lord_base.set_player_inventory_formspec(player, context)
end

function lord_base.get_page(player)
	local context = lord_base.contexts[player:get_player_name()]
	return context and context.page or lord_base.get_homepage_name(player)
end

minetest.register_on_joinplayer(function(player)
	if lord_base.enabled then
		lord_base.set_player_inventory_formspec(player)
	end
end)

minetest.register_on_leaveplayer(function(player)
	lord_base.contexts[player:get_player_name()] = nil
end)

minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname ~= "" or not lord_base.enabled then
		return false
	end

	-- Get Context
	local name = player:get_player_name()
	local context = lord_base.contexts[name]
	if not context then
		lord_base.set_player_inventory_formspec(player)
		return false
	end

	-- Was a tab selected?
	if fields.lord_base_nav_tabs and context.nav then
		local tid = tonumber(fields.lord_base_nav_tabs)
		if tid and tid > 0 then
			local id = context.nav[tid]
			local page = lord_base.pages[id]
			if id and page then
				lord_base.set_page(player, id)
			end
		end
	else
		-- Pass event to page
		local page = lord_base.pages[context.page]
		if page and page.on_player_receive_fields then
			return page:on_player_receive_fields(player, context, fields)
		end
	end
end)

lord_base.register_page("lord_base:crafting", {
	title = "Crafting",
	get = function(self, player, context)
		return lord_base.make_formspec(player, context, [[
				list[current_player;craft;1.75,0.5;3,3;]
				list[current_player;craftpreview;5.75,1.5;1,1;]
				image[4.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]
				listring[current_player;main]
				listring[current_player;craft]
				image[0,4.7;1,1;gui_hb_bg.png]
				image[1,4.7;1,1;gui_hb_bg.png]
				image[2,4.7;1,1;gui_hb_bg.png]
				image[3,4.7;1,1;gui_hb_bg.png]
				image[4,4.7;1,1;gui_hb_bg.png]
				image[5,4.7;1,1;gui_hb_bg.png]
				image[6,4.7;1,1;gui_hb_bg.png]
				image[7,4.7;1,1;gui_hb_bg.png]
			]], true)
	end
})
