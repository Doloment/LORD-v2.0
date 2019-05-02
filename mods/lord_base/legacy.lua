-- mods/lord_base/legacy.lua

-- Horrible stuff to support old code registering falling nodes
-- Don't use this and never do what this does, it's completely wrong!
-- (More specifically, the client and the C++ code doesn't get the group)
function lord_base.register_falling_node(nodename, texture)
	minetest.log("error", debug.traceback())
	minetest.log('error', "WARNING: lord_base.register_falling_node is deprecated")
	if minetest.registered_nodes[nodename] then
		minetest.registered_nodes[nodename].groups.falling_node = 1
	end
end

function lord_base.spawn_falling_node(p, nodename)
	spawn_falling_node(p, nodename)
end

-- Liquids
WATER_ALPHA = minetest.registered_nodes["lord_blocks:water_source"].alpha
WATER_VISC = minetest.registered_nodes["lord_blocks:water_source"].liquid_viscosity
LAVA_VISC = minetest.registered_nodes["lord_blocks:lava_source"].liquid_viscosity
LIGHT_MAX = lord_base.LIGHT_MAX

-- Formspecs
lord_base.gui_suvival_form = lord_base.gui_survival_form
lord_base.gui_bg     = ""
lord_base.gui_bg_img = ""
lord_base.gui_slots  = ""

-- Players
if minetest.get_modpath("player_api") then
	lord_base.registered_player_models = player_api.registered_models
	lord_base.player_register_model    = player_api.register_model
	lord_base.player_attached          = player_api.player_attached
	lord_base.player_get_animation     = player_api.get_animation
	lord_base.player_set_model         = player_api.set_model
	lord_base.player_set_textures      = player_api.set_textures
	lord_base.player_set_animation     = player_api.set_animation
end

-- Chests
lord_base.register_chest = lord_base.chest.register_chest

-- Check for a volume intersecting protection
function lord_base.intersects_protection(minp, maxp, player_name, interval)
	minetest.log("warning", "lord_base.intersects_protection() is " ..
		"deprecated, use minetest.is_area_protected() instead.")
	minetest.is_area_protected(minp, maxp, player_name, interval)
end
