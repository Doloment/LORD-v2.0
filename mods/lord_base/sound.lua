--
-- Sounds
--

sounds = {}

function lord_base.node_sound_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "", gain = 1.0}
	table.dug = table.dug or
			{name = "lord_base_dug_node", gain = 0.25}
	table.place = table.place or
			{name = "lord_base_place_node_hard", gain = 1.0}
	return table
end

function lord_base.node_sound_stone_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "lord_base_hard_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "lord_base_hard_footstep", gain = 1.0}
	lord_base.node_sound_defaults(table)
	return table
end

function lord_base.node_sound_dirt_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "lord_base_dirt_footstep", gain = 0.4}
	table.dug = table.dug or
			{name = "lord_base_dirt_footstep", gain = 1.0}
	table.place = table.place or
			{name = "lord_base_place_node", gain = 1.0}
	lord_base.node_sound_defaults(table)
	return table
end

function lord_base.node_sound_sand_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "lord_base_sand_footstep", gain = 0.12}
	table.dug = table.dug or
			{name = "lord_base_sand_footstep", gain = 0.24}
	table.place = table.place or
			{name = "lord_base_place_node", gain = 1.0}
	lord_base.node_sound_defaults(table)
	return table
end

function lord_base.node_sound_gravel_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "lord_base_gravel_footstep", gain = 0.4}
	table.dug = table.dug or
			{name = "lord_base_gravel_footstep", gain = 1.0}
	table.place = table.place or
			{name = "lord_base_place_node", gain = 1.0}
	lord_base.node_sound_defaults(table)
	return table
end

function lord_base.node_sound_wood_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "lord_base_wood_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "lord_base_wood_footstep", gain = 1.0}
	lord_base.node_sound_defaults(table)
	return table
end

function lord_base.node_sound_leaves_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "lord_base_grass_footstep", gain = 0.45}
	table.dug = table.dug or
			{name = "lord_base_grass_footstep", gain = 0.7}
	table.place = table.place or
			{name = "lord_base_place_node", gain = 1.0}
	lord_base.node_sound_defaults(table)
	return table
end

function lord_base.node_sound_glass_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "lord_base_glass_footstep", gain = 0.3}
	table.dig = table.dig or
			{name = "lord_base_glass_footstep", gain = 0.5}
	table.dug = table.dug or
			{name = "lord_base_break_glass", gain = 1.0}
	lord_base.node_sound_defaults(table)
	return table
end

function lord_base.node_sound_metal_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "lord_base_metal_footstep", gain = 0.4}
	table.dig = table.dig or
			{name = "lord_base_dig_metal", gain = 0.5}
	table.dug = table.dug or
			{name = "lord_base_dug_metal", gain = 0.5}
	table.place = table.place or
			{name = "lord_base_place_node_metal", gain = 0.5}
	lord_base.node_sound_defaults(table)
	return table
end

function lord_base.node_sound_water_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "lord_base_water_footstep", gain = 0.2}
	lord_base.node_sound_defaults(table)
	return table
end

function lord_base.node_sound_snow_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "lord_base_snow_footstep", gain = 0.2}
	table.dig = table.dig or
			{name = "lord_base_snow_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "lord_base_snow_footstep", gain = 0.3}
	table.place = table.place or
			{name = "lord_base_place_node", gain = 1.0}
	lord_base.node_sound_defaults(table)
	return table
end