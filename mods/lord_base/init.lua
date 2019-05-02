-- Minetest 0.4 mod: lord_base
-- See README.txt for licensing and other information.

-- The API documentation in here was moved into game_api.txt

-- Definitions made by this mod that other mods can use too
lord_base = {}

lord_base.LIGHT_MAX = 14

-- GUI related stuff
minetest.register_on_joinplayer(function(player)
	player:set_formspec_prepend([[
			bgcolor[#080808BB;true]
			background[5,5;1,1;gui_formbg.png;true]
			listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF] ]])
end)

function lord_base.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end

lord_base.gui_survival_form = "size[8,8.5]"..
			"list[current_player;main;0,4.25;8,1;]"..
			"list[current_player;main;0,5.5;8,3;8]"..
			"list[current_player;craft;1.75,0.5;3,3;]"..
			"list[current_player;craftpreview;5.75,1.5;1,1;]"..
			"image[4.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]"..
			"listring[current_player;main]"..
			"listring[current_player;craft]"..
			lord_base.get_hotbar_bg(0,4.25)

-- Load files
dofile(minetest.get_modpath("lord_base").."/aliases.lua")
dofile(minetest.get_modpath("lord_base").."/chests.lua")
dofile(minetest.get_modpath("lord_base").."/functions.lua")
dofile(minetest.get_modpath("lord_base").."/inventory.lua")
dofile(minetest.get_modpath("lord_base").."/item_entity.lua")
--dofile(minetest.get_modpath("lord_base").."/legacy.lua")
dofile(minetest.get_modpath("lord_base").."/trees.lua")
