-- mods/lord_blocks/nodes.lua


--[[ Node name convention:

Although many node names are in combined-word form, the required form for new
node names is words separated by underscores. If both forms are used in written
language (for example pinewood and pine wood) the underscore form should be used.

--]]


--[[ Index:

Stone
-----
(1. Material 2. Cobble variant 3. Brick variant 4. Modified forms)

lord_blocks:stone
lord_blocks:cobble
lord_blocks:stonebrick
lord_blocks:stone_block
lord_blocks:mossycobble

lord_blocks:desert_stone
lord_blocks:desert_cobble
lord_blocks:desert_stonebrick
lord_blocks:desert_stone_block

lord_blocks:sandstone
lord_blocks:sandstonebrick
lord_blocks:sandstone_block
lord_blocks:desert_sandstone
lord_blocks:desert_sandstone_brick
lord_blocks:desert_sandstone_block
lord_blocks:silver_sandstone
lord_blocks:silver_sandstone_brick
lord_blocks:silver_sandstone_block

lord_blocks:obsidian
lord_blocks:obsidianbrick
lord_blocks:obsidian_block

Soft / Non-Stone
----------------
(1. Material 2. Modified forms)

lord_blocks:dirt
lord_blocks:dirt_with_grass
lord_blocks:dirt_with_grass_footsteps
lord_blocks:dirt_with_dry_grass
lord_blocks:dirt_with_snow
lord_blocks:dirt_with_rainforest_litter
lord_blocks:dirt_with_coniferous_litter

lord_blocks:permafrost
lord_blocks:permafrost_with_stones
lord_blocks:permafrost_with_moss

lord_blocks:sand
lord_blocks:desert_sand
lord_blocks:silver_sand

lord_blocks:gravel

lord_blocks:clay

lord_blocks:snow
lord_blocks:snowblock
lord_blocks:ice
lord_blocks:cave_ice

Trees
-----
(1. Trunk 2. Fabricated trunk 3. Leaves 4. Sapling 5. Fruits)

lord_blocks:tree
lord_blocks:wood
lord_blocks:leaves
lord_blocks:sapling
lord_blocks:apple

lord_blocks:jungletree
lord_blocks:junglewood
lord_blocks:jungleleaves
lord_blocks:junglesapling
lord_blocks:emergent_jungle_sapling

lord_blocks:pine_tree
lord_blocks:pine_wood
lord_blocks:pine_needles
lord_blocks:pine_sapling

lord_blocks:acacia_tree
lord_blocks:acacia_wood
lord_blocks:acacia_leaves
lord_blocks:acacia_sapling

lord_blocks:aspen_tree
lord_blocks:aspen_wood
lord_blocks:aspen_leaves
lord_blocks:aspen_sapling

Ores
----
(1. In stone 2. Blocks)

lord_blocks:stone_with_coal
lord_blocks:coalblock

lord_blocks:stone_with_iron
lord_blocks:steelblock

lord_blocks:stone_with_copper
lord_blocks:copperblock

lord_blocks:stone_with_tin
lord_blocks:tinblock

lord_blocks:bronzeblock

lord_blocks:stone_with_gold
lord_blocks:goldblock

lord_blocks:stone_with_mese
lord_blocks:mese

lord_blocks:stone_with_diamond
lord_blocks:diamondblock

Plantlife
---------

lord_blocks:cactus
lord_blocks:large_cactus_seedling

lord_blocks:papyrus
lord_blocks:dry_shrub
lord_blocks:junglegrass

lord_blocks:grass_1
lord_blocks:grass_2
lord_blocks:grass_3
lord_blocks:grass_4
lord_blocks:grass_5

lord_blocks:dry_grass_1
lord_blocks:dry_grass_2
lord_blocks:dry_grass_3
lord_blocks:dry_grass_4
lord_blocks:dry_grass_5

lord_blocks:fern_1
lord_blocks:fern_2
lord_blocks:fern_3

lord_blocks:marram_grass_1
lord_blocks:marram_grass_2
lord_blocks:marram_grass_3

lord_blocks:bush_stem
lord_blocks:bush_leaves
lord_blocks:bush_sapling
lord_blocks:acacia_bush_stem
lord_blocks:acacia_bush_leaves
lord_blocks:acacia_bush_sapling
lord_blocks:pine_bush_stem
lord_blocks:pine_bush_needles
lord_blocks:pine_bush_sapling
lord_blocks:blueberry_bush_leaves_with_berries
lord_blocks:blueberry_bush_leaves
lord_blocks:blueberry_bush_sapling

lord_blocks:sand_with_kelp

Corals
------

lord_blocks:coral_brown
lord_blocks:coral_orange
lord_blocks:coral_skeleton

Liquids
-------
(1. Source 2. Flowing)

lord_blocks:water_source
lord_blocks:water_flowing

lord_blocks:river_water_source
lord_blocks:river_water_flowing

lord_blocks:lava_source
lord_blocks:lava_flowing

Tools / "Advanced" crafting / Non-"natural"
-------------------------------------------

lord_blocks:bookshelf

lord_blocks:sign_wall_wood
lord_blocks:sign_wall_steel

lord_blocks:ladder_wood
lord_blocks:ladder_steel

lord_blocks:fence_wood
lord_blocks:fence_acacia_wood
lord_blocks:fence_junglewood
lord_blocks:fence_pine_wood
lord_blocks:fence_aspen_wood

lord_blocks:glass
lord_blocks:obsidian_glass

lord_blocks:brick

lord_blocks:meselamp
lord_blocks:mese_post_light

Misc
----

lord_blocks:cloud

--]]

--
-- Stone
--

minetest.register_node("lord_blocks:stone", {
	description = "Stone",
	tiles = {"lord_blocks_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'lord_blocks:cobble',
	legacy_mineral = true,
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:cobble", {
	description = "Cobblestone",
	tiles = {"lord_blocks_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:stonebrick", {
	description = "Stone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:stone_block", {
	description = "Stone Block",
	tiles = {"lord_blocks_stone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:mossycobble", {
	description = "Mossy Cobblestone",
	tiles = {"lord_blocks_mossycobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = lord_base.node_sound_stone_defaults(),
})


minetest.register_node("lord_blocks:desert_stone", {
	description = "Desert Stone",
	tiles = {"lord_blocks_desert_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'lord_blocks:desert_cobble',
	legacy_mineral = true,
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:desert_cobble", {
	description = "Desert Cobblestone",
	tiles = {"lord_blocks_desert_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:desert_stonebrick", {
	description = "Desert Stone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_desert_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:desert_stone_block", {
	description = "Desert Stone Block",
	tiles = {"lord_blocks_desert_stone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:sandstone", {
	description = "Sandstone",
	tiles = {"lord_blocks_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:sandstonebrick", {
	description = "Sandstone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:sandstone_block", {
	description = "Sandstone Block",
	tiles = {"lord_blocks_sandstone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:desert_sandstone", {
	description = "Desert Sandstone",
	tiles = {"lord_blocks_desert_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:desert_sandstone_brick", {
	description = "Desert Sandstone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_desert_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:desert_sandstone_block", {
	description = "Desert Sandstone Block",
	tiles = {"lord_blocks_desert_sandstone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:silver_sandstone", {
	description = "Silver Sandstone",
	tiles = {"lord_blocks_silver_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:silver_sandstone_brick", {
	description = "Silver Sandstone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_silver_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:silver_sandstone_block", {
	description = "Silver Sandstone Block",
	tiles = {"lord_blocks_silver_sandstone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:obsidian", {
	description = "Obsidian",
	tiles = {"lord_blocks_obsidian.png"},
	sounds = lord_base.node_sound_stone_defaults(),
	groups = {cracky = 1, level = 2},
})

minetest.register_node("lord_blocks:obsidianbrick", {
	description = "Obsidian Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_obsidian_brick.png"},
	is_ground_content = false,
	sounds = lord_base.node_sound_stone_defaults(),
	groups = {cracky = 1, level = 2},
})

minetest.register_node("lord_blocks:obsidian_block", {
	description = "Obsidian Block",
	tiles = {"lord_blocks_obsidian_block.png"},
	is_ground_content = false,
	sounds = lord_base.node_sound_stone_defaults(),
	groups = {cracky = 1, level = 2},
})

--
-- Soft / Non-Stone
--

minetest.register_node("lord_blocks:dirt", {
	description = "Dirt",
	tiles = {"lord_blocks_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = lord_base.node_sound_dirt_defaults(),
})

minetest.register_node("lord_blocks:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"lord_blocks_grass.png", "lord_blocks_dirt.png",
		{name = "lord_blocks_dirt.png^lord_blocks_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'lord_blocks:dirt',
	sounds = lord_base.node_sound_dirt_defaults({
		footstep = {name = "lord_base_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("lord_blocks:dirt_with_grass_footsteps", {
	description = "Dirt with Grass and Footsteps",
	tiles = {"lord_blocks_grass.png^lord_blocks_footprint.png", "lord_blocks_dirt.png",
		{name = "lord_blocks_dirt.png^lord_blocks_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	drop = 'lord_blocks:dirt',
	sounds = lord_base.node_sound_dirt_defaults({
		footstep = {name = "lord_base_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("lord_blocks:dirt_with_dry_grass", {
	description = "Dirt with Dry Grass",
	tiles = {"lord_blocks_dry_grass.png",
		"lord_blocks_dirt.png",
		{name = "lord_blocks_dirt.png^lord_blocks_dry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'lord_blocks:dirt',
	sounds = lord_base.node_sound_dirt_defaults({
		footstep = {name = "lord_base_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("lord_blocks:dirt_with_snow", {
	description = "Dirt with Snow",
	tiles = {"lord_blocks_snow.png", "lord_blocks_dirt.png",
		{name = "lord_blocks_dirt.png^lord_blocks_snow_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, snowy = 1},
	drop = 'lord_blocks:dirt',
	sounds = lord_base.node_sound_dirt_defaults({
		footstep = {name = "lord_base_snow_footstep", gain = 0.2},
	}),
})

minetest.register_node("lord_blocks:dirt_with_rainforest_litter", {
	description = "Dirt with Rainforest Litter",
	tiles = {
		"lord_blocks_rainforest_litter.png",
		"lord_blocks_dirt.png",
		{name = "lord_blocks_dirt.png^lord_blocks_rainforest_litter_side.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "lord_blocks:dirt",
	sounds = lord_base.node_sound_dirt_defaults({
		footstep = {name = "lord_base_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("lord_blocks:dirt_with_coniferous_litter", {
	description = "Dirt with Coniferous Litter",
	tiles = {
		"lord_blocks_coniferous_litter.png",
		"lord_blocks_dirt.png",
		{name = "lord_blocks_dirt.png^lord_blocks_coniferous_litter_side.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "lord_blocks:dirt",
	sounds = lord_base.node_sound_dirt_defaults({
		footstep = {name = "lord_base_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("lord_blocks:permafrost", {
	description = "Permafrost",
	tiles = {"lord_blocks_permafrost.png"},
	groups = {cracky = 3},
	sounds = lord_base.node_sound_dirt_defaults(),
})

minetest.register_node("lord_blocks:permafrost_with_stones", {
	description = "Permafrost with Stones",
	tiles = {"lord_blocks_permafrost.png^lord_blocks_stones.png",
		"lord_blocks_permafrost.png",
		"lord_blocks_permafrost.png^lord_blocks_stones_side.png"},
	groups = {cracky = 3},
	sounds = lord_base.node_sound_gravel_defaults(),
})

minetest.register_node("lord_blocks:permafrost_with_moss", {
	description = "Permafrost with Moss",
	tiles = {"lord_blocks_moss.png", "lord_blocks_permafrost.png",
		{name = "lord_blocks_permafrost.png^lord_blocks_moss_side.png",
			tileable_vertical = false}},
	groups = {cracky = 3},
	sounds = lord_base.node_sound_dirt_defaults({
		footstep = {name = "lord_base_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("lord_blocks:sand", {
	description = "Sand",
	tiles = {"lord_blocks_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = lord_base.node_sound_sand_defaults(),
})

minetest.register_node("lord_blocks:desert_sand", {
	description = "Desert Sand",
	tiles = {"lord_blocks_desert_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = lord_base.node_sound_sand_defaults(),
})

minetest.register_node("lord_blocks:silver_sand", {
	description = "Silver Sand",
	tiles = {"lord_blocks_silver_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = lord_base.node_sound_sand_defaults(),
})


minetest.register_node("lord_blocks:gravel", {
	description = "Gravel",
	tiles = {"lord_blocks_gravel.png"},
	groups = {crumbly = 2, falling_node = 1},
	sounds = lord_base.node_sound_gravel_defaults(),
	drop = {
		max_items = 1,
		items = {
			{items = {'lord_items:flint'}, rarity = 16},
			{items = {'lord_items:gravel'}}
		}
	}
})

minetest.register_node("lord_blocks:clay", {
	description = "Clay",
	tiles = {"lord_blocks_clay.png"},
	groups = {crumbly = 3},
	drop = 'lord_item:clay_lump 4',
	sounds = lord_base.node_sound_dirt_defaults(),
})


minetest.register_node("lord_blocks:snow", {
	description = "Snow",
	tiles = {"lord_blocks_snow.png"},
	inventory_image = "lord_items_snowball.png",
	wield_image = "lord_items_snowball.png",
	paramtype = "light",
	buildable_to = true,
	floodable = true,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -7 / 16, 0.5},
		},
	},
	groups = {crumbly = 3, falling_node = 1, snowy = 1},
	sounds = lord_base.node_sound_snow_defaults(),

	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "lord_blocks:dirt_with_grass" then
			minetest.set_node(pos, {name = "lord_blocks:dirt_with_snow"})
		end
	end,
})

minetest.register_node("lord_blocks:snowblock", {
	description = "Snow Block",
	tiles = {"lord_blocks_snow.png"},
	groups = {crumbly = 3, cools_lava = 1, snowy = 1},
	sounds = lord_base.node_sound_snow_defaults(),

	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "lord_blocks:dirt_with_grass" then
			minetest.set_node(pos, {name = "lord_blocks:dirt_with_snow"})
		end
	end,
})

-- 'is ground content = false' to avoid tunnels in sea ice or ice rivers
minetest.register_node("lord_blocks:ice", {
	description = "Ice",
	tiles = {"lord_blocks_ice.png"},
	is_ground_content = false,
	paramtype = "light",
	groups = {cracky = 3, cools_lava = 1, slippery = 3},
	sounds = lord_base.node_sound_glass_defaults(),
})

-- Mapgen-placed ice with 'is ground content = true' to contain tunnels
minetest.register_node("lord_blocks:cave_ice", {
	description = "Cave Ice",
	tiles = {"lord_blocks_ice.png"},
	paramtype = "light",
	groups = {cracky = 3, cools_lava = 1, slippery = 3,
		not_in_creative_inventory = 1},
	drop = "lord_blocks:ice",
	sounds = lord_base.node_sound_glass_defaults(),
})

--
-- Trees
--

minetest.register_node("lord_blocks:tree", {
	description = "Apple Tree",
	tiles = {"lord_blocks_tree_top.png", "lord_blocks_tree_top.png", "lord_blocks_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("lord_blocks:wood", {
	description = "Apple Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = lord_base.node_sound_wood_defaults(),
})

minetest.register_node("lord_blocks:sapling", {
	description = "Apple Tree Sapling",
	drawtype = "plantlike",
	tiles = {"lord_blocks_sapling.png"},
	inventory_image = "lord_blocks_sapling.png",
	wield_image = "lord_blocks_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = lord_base.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = lord_base.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = lord_blocks.sapling_on_place(itemstack, placer, pointed_thing,
			"lord_blocks:sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -3, y = 1, z = -3},
			{x = 3, y = 6, z = 3},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

minetest.register_node("lord_blocks:leaves", {
	description = "Apple Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"lord_blocks_leaves.png"},
	special_tiles = {"lord_blocks_leaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'lord_blocks:sapling'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'lord_blocks:leaves'},
			}
		}
	},
	sounds = lord_base.node_sound_leaves_defaults(),

	after_place_node = lord_base.after_place_leaves,
})

minetest.register_node("lord_blocks:apple", {
	description = "Apple",
	drawtype = "plantlike",
	tiles = {"lord_blocks_apple.png"},
	inventory_image = "lord_blocks_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -7 / 16, -3 / 16, 3 / 16, 4 / 16, 3 / 16}
	},
	groups = {fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 3, leafdecay_drop = 1, food_apple = 1},
	on_use = minetest.item_eat(2),
	sounds = lord_base.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		minetest.set_node(pos, {name = "lord_blocks:apple", param2 = 1})
	end,

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		if oldnode.param2 == 0 then
			minetest.set_node(pos, {name = "lord_blocks:apple_mark"})
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		end
	end,
})

minetest.register_node("lord_blocks:apple_mark", {
	description = "Apple Marker",
	drawtype = "airlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	on_timer = function(pos, elapsed)
		if not minetest.find_node_near(pos, 1, "lord_blocks:leaves") then
			minetest.remove_node(pos)
		elseif minetest.get_node_light(pos) < 11 then
			minetest.get_node_timer(pos):start(200)
		else
			minetest.set_node(pos, {name = "lord_blocks:apple"})
		end
	end
})


minetest.register_node("lord_blocks:jungletree", {
	description = "Jungle Tree",
	tiles = {"lord_blocks_jungletree_top.png", "lord_blocks_jungletree_top.png",
		"lord_blocks_jungletree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("lord_blocks:junglewood", {
	description = "Jungle Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_junglewood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = lord_base.node_sound_wood_defaults(),
})

minetest.register_node("lord_blocks:jungleleaves", {
	description = "Jungle Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"lord_blocks_jungleleaves.png"},
	special_tiles = {"lord_blocks_jungleleaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {'lord_blocks:junglesapling'}, rarity = 20},
			{items = {'lord_blocks:jungleleaves'}}
		}
	},
	sounds = lord_base.node_sound_leaves_defaults(),

	after_place_node = lord_base.after_place_leaves,
})

minetest.register_node("lord_blocks:junglesapling", {
	description = "Jungle Tree Sapling",
	drawtype = "plantlike",
	tiles = {"lord_blocks_junglesapling.png"},
	inventory_image = "lord_blocks_junglesapling.png",
	wield_image = "lord_blocks_junglesapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = lord_base.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = lord_base.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = lord_blocks.sapling_on_place(itemstack, placer, pointed_thing,
			"lord_blocks:junglesapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 15, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

minetest.register_node("lord_blocks:emergent_jungle_sapling", {
	description = "Emergent Jungle Tree Sapling",
	drawtype = "plantlike",
	tiles = {"lord_blocks_emergent_jungle_sapling.png"},
	inventory_image = "lord_blocks_emergent_jungle_sapling.png",
	wield_image = "lord_blocks_emergent_jungle_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = lord_base.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = lord_base.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = lord_blocks.sapling_on_place(itemstack, placer, pointed_thing,
			"lord_blocks:emergent_jungle_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -3, y = -5, z = -3},
			{x = 3, y = 31, z = 3},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})


minetest.register_node("lord_blocks:pine_tree", {
	description = "Pine Tree",
	tiles = {"lord_blocks_pine_tree_top.png", "lord_blocks_pine_tree_top.png",
		"lord_blocks_pine_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = lord_base.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("lord_blocks:pine_wood", {
	description = "Pine Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_pine_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = lord_base.node_sound_wood_defaults(),
})

minetest.register_node("lord_blocks:pine_needles",{
	description = "Pine Needles",
	drawtype = "allfaces_optional",
	tiles = {"lord_blocks_pine_needles.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"lord_blocks:pine_sapling"}, rarity = 20},
			{items = {"lord_blocks:pine_needles"}}
		}
	},
	sounds = lord_base.node_sound_leaves_defaults(),

	after_place_node = lord_base.after_place_leaves,
})

minetest.register_node("lord_blocks:pine_sapling", {
	description = "Pine Tree Sapling",
	drawtype = "plantlike",
	tiles = {"lord_blocks_pine_sapling.png"},
	inventory_image = "lord_blocks_pine_sapling.png",
	wield_image = "lord_blocks_pine_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = lord_base.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 3,
		attached_node = 1, sapling = 1},
	sounds = lord_base.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = lord_blocks.sapling_on_place(itemstack, placer, pointed_thing,
			"lord_blocks:pine_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 14, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})


minetest.register_node("lord_blocks:acacia_tree", {
	description = "Acacia Tree",
	tiles = {"lord_blocks_acacia_tree_top.png", "lord_blocks_acacia_tree_top.png",
		"lord_blocks_acacia_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("lord_blocks:acacia_wood", {
	description = "Acacia Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_acacia_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = lord_base.node_sound_wood_defaults(),
})

minetest.register_node("lord_blocks:acacia_leaves", {
	description = "Acacia Tree Leaves",
	drawtype = "allfaces_optional",
	tiles = {"lord_blocks_acacia_leaves.png"},
	special_tiles = {"lord_blocks_acacia_leaves_simple.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"lord_blocks:acacia_sapling"}, rarity = 20},
			{items = {"lord_blocks:acacia_leaves"}}
		}
	},
	sounds = lord_base.node_sound_leaves_defaults(),

	after_place_node = lord_base.after_place_leaves,
})

minetest.register_node("lord_blocks:acacia_sapling", {
	description = "Acacia Tree Sapling",
	drawtype = "plantlike",
	tiles = {"lord_blocks_acacia_sapling.png"},
	inventory_image = "lord_blocks_acacia_sapling.png",
	wield_image = "lord_blocks_acacia_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = lord_base.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = lord_base.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = lord_blocks.sapling_on_place(itemstack, placer, pointed_thing,
			"lord_blocks:acacia_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -4, y = 1, z = -4},
			{x = 4, y = 7, z = 4},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

minetest.register_node("lord_blocks:aspen_tree", {
	description = "Aspen Tree",
	tiles = {"lord_blocks_aspen_tree_top.png", "lord_blocks_aspen_tree_top.png",
		"lord_blocks_aspen_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = lord_base.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("lord_blocks:aspen_wood", {
	description = "Aspen Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_aspen_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = lord_base.node_sound_wood_defaults(),
})

minetest.register_node("lord_blocks:aspen_leaves", {
	description = "Aspen Tree Leaves",
	drawtype = "allfaces_optional",
	tiles = {"lord_blocks_aspen_leaves.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"lord_blocks:aspen_sapling"}, rarity = 20},
			{items = {"lord_blocks:aspen_leaves"}}
		}
	},
	sounds = lord_base.node_sound_leaves_defaults(),

	after_place_node = lord_base.after_place_leaves,
})

minetest.register_node("lord_blocks:aspen_sapling", {
	description = "Aspen Tree Sapling",
	drawtype = "plantlike",
	tiles = {"lord_blocks_aspen_sapling.png"},
	inventory_image = "lord_blocks_aspen_sapling.png",
	wield_image = "lord_blocks_aspen_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = lord_base.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, 0.5, 3 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 3,
		attached_node = 1, sapling = 1},
	sounds = lord_base.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = lord_blocks.sapling_on_place(itemstack, placer, pointed_thing,
			"lord_blocks:aspen_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 12, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

--
-- Ores
--

minetest.register_node("lord_blocks:stone_with_coal", {
	description = "Coal Ore",
	tiles = {"lord_blocks_stone.png^lord_blocks_mineral_coal.png"},
	groups = {cracky = 3},
	drop = 'lord_items:coal_lump',
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:coalblock", {
	description = "Coal Block",
	tiles = {"lord_blocks_coal_block.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = lord_base.node_sound_stone_defaults(),
})


minetest.register_node("lord_blocks:stone_with_iron", {
	description = "Iron Ore",
	tiles = {"lord_blocks_stone.png^lord_blocks_mineral_iron.png"},
	groups = {cracky = 2},
	drop = 'lord_items:iron_lump',
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:steelblock", {
	description = "Steel Block",
	tiles = {"lord_blocks_steel_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = lord_base.node_sound_metal_defaults(),
})


minetest.register_node("lord_blocks:stone_with_copper", {
	description = "Copper Ore",
	tiles = {"lord_blocks_stone.png^lord_blocks_mineral_copper.png"},
	groups = {cracky = 2},
	drop = 'lord_items:copper_lump',
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:copperblock", {
	description = "Copper Block",
	tiles = {"lord_blocks_copper_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = lord_base.node_sound_metal_defaults(),
})


minetest.register_node("lord_blocks:stone_with_tin", {
	description = "Tin Ore",
	tiles = {"lord_blocks_stone.png^lord_blocks_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "lord_items:tin_lump",
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:tinblock", {
	description = "Tin Block",
	tiles = {"lord_blocks_tin_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = lord_base.node_sound_metal_defaults(),
})


minetest.register_node("lord_blocks:bronzeblock", {
	description = "Bronze Block",
	tiles = {"lord_blocks_bronze_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = lord_base.node_sound_metal_defaults(),
})


minetest.register_node("lord_blocks:stone_with_mese", {
	description = "Mese Ore",
	tiles = {"lord_blocks_stone.png^lord_blocks_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "lord_items:mese_crystal",
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:mese", {
	description = "Mese Block",
	tiles = {"lord_blocks_mese_block.png"},
	paramtype = "light",
	groups = {cracky = 1, level = 2},
	sounds = lord_base.node_sound_stone_defaults(),
	light_source = 3,
})


minetest.register_node("lord_blocks:stone_with_gold", {
	description = "Gold Ore",
	tiles = {"lord_blocks_stone.png^lord_blocks_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "lord_items:gold_lump",
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:goldblock", {
	description = "Gold Block",
	tiles = {"lord_blocks_gold_block.png"},
	is_ground_content = false,
	groups = {cracky = 1},
	sounds = lord_base.node_sound_metal_defaults(),
})


minetest.register_node("lord_blocks:stone_with_diamond", {
	description = "Diamond Ore",
	tiles = {"lord_blocks_stone.png^lord_blocks_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "lord_base:diamond",
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:diamondblock", {
	description = "Diamond Block",
	tiles = {"lord_blocks_diamond_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = lord_base.node_sound_stone_defaults(),
})

--
-- Plantlife (non-cubic)
--

minetest.register_node("lord_blocks:cactus", {
	description = "Cactus",
	tiles = {"lord_blocks_cactus_top.png", "lord_blocks_cactus_top.png",
		"lord_blocks_cactus_side.png"},
	paramtype2 = "facedir",
	groups = {choppy = 3},
	sounds = lord_base.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("lord_blocks:large_cactus_seedling", {
	description = "Large Cactus Seedling",
	drawtype = "plantlike",
	tiles = {"lord_blocks_large_cactus_seedling.png"},
	inventory_image = "lord_blocks_large_cactus_seedling.png",
	wield_image = "lord_blocks_large_cactus_seedling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {
			-5 / 16, -0.5, -5 / 16,
			5 / 16, 0.5, 5 / 16
		}
	},
	groups = {choppy = 3, dig_immediate = 3, attached_node = 1},
	sounds = lord_base.node_sound_wood_defaults(),

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = lord_blocks.sapling_on_place(itemstack, placer, pointed_thing,
			"lord_blocks:large_cactus_seedling",
			{x = -2, y = -1, z = -2},
			{x = 2, y = 5, z = 2},
			4)

		return itemstack
	end,

	on_construct = function(pos)
		-- Normal cactus farming adds 1 cactus node by ABM,
		-- interval 12s, chance 83.
		-- Consider starting with 5 cactus nodes. We make sure that growing a
		-- large cactus is not a faster way to produce new cactus nodes.
		-- Confirmed by experiment, when farming 5 cacti, on average 1 new
		-- cactus node is added on average every
		-- 83 / 5 = 16.6 intervals = 16.6 * 12 = 199.2s.
		-- Large cactus contains on average 14 cactus nodes.
		-- 14 * 199.2 = 2788.8s.
		-- Set random range to average to 2789s.
		minetest.get_node_timer(pos):start(math.random(1859, 3719))
	end,

	on_timer = function(pos)
		local node_under = minetest.get_node_or_nil(
			{x = pos.x, y = pos.y - 1, z = pos.z})
		if not node_under then
			-- Node under not yet loaded, try later
			minetest.get_node_timer(pos):start(300)
			return
		end

		if minetest.get_item_group(node_under.name, "sand") == 0 then
			-- Seedling dies
			minetest.remove_node(pos)
			return
		end

		local light_level = minetest.get_node_light(pos)
		if not light_level or light_level < 13 then
			-- Too dark for growth, try later in case it's night
			minetest.get_node_timer(pos):start(300)
			return
		end

		minetest.log("action", "A large cactus seedling grows into a large" ..
			"cactus at ".. minetest.pos_to_string(pos))
		lord_base.grow_large_cactus(pos)
	end,
})

minetest.register_node("lord_blocks:papyrus", {
	description = "Papyrus",
	drawtype = "plantlike",
	tiles = {"lord_blocks_papyrus.png"},
	inventory_image = "lord_blocks_papyrus.png",
	wield_image = "lord_blocks_papyrus.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {snappy = 3, flammable = 2},
	sounds = lord_base.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		lord_base.dig_up(pos, node, digger)
	end,
})

minetest.register_node("lord_blocks:dry_shrub", {
	description = "Dry Shrub",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"lord_blocks_dry_shrub.png"},
	inventory_image = "lord_blocks_dry_shrub.png",
	wield_image = "lord_blocks_dry_shrub.png",
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 4,
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	sounds = lord_base.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})

minetest.register_node("lord_blocks:junglegrass", {
	description = "Jungle Grass",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.69,
	tiles = {"lord_blocks_junglegrass.png"},
	inventory_image = "lord_blocks_junglegrass.png",
	wield_image = "lord_blocks_junglegrass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, flammable = 1},
	sounds = lord_base.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
})


minetest.register_node("lord_blocks:grass_1", {
	description = "Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"lord_blocks_grass_1.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "lord_blocks_grass_3.png",
	wield_image = "lord_blocks_grass_3.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
	sounds = lord_base.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("lord_blocks:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("lord_blocks:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 5 do
	minetest.register_node("lord_blocks:grass_" .. i, {
		description = "Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"lord_blocks_grass_" .. i .. ".png"},
		inventory_image = "lord_blocks_grass_" .. i .. ".png",
		wield_image = "lord_blocks_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		drop = "lord_blocks:grass_1",
		groups = {snappy = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory = 1, grass = 1, flammable = 1},
		sounds = lord_base.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
		},
	})
end


minetest.register_node("lord_blocks:dry_grass_1", {
	description = "Dry Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"lord_blocks_dry_grass_1.png"},
	inventory_image = "lord_blocks_dry_grass_3.png",
	wield_image = "lord_blocks_dry_grass_3.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, flora = 1,
		attached_node = 1, dry_grass = 1},
	sounds = lord_base.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random dry grass node
		local stack = ItemStack("lord_blocks:dry_grass_" .. math.random(1, 5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("lord_blocks:dry_grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 5 do
	minetest.register_node("lord_blocks:dry_grass_" .. i, {
		description = "Dry Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"lord_blocks_dry_grass_" .. i .. ".png"},
		inventory_image = "lord_blocks_dry_grass_" .. i .. ".png",
		wield_image = "lord_blocks_dry_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory=1, dry_grass = 1},
		drop = "lord_blocks:dry_grass_1",
		sounds = lord_base.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -1 / 16, 6 / 16},
		},
	})
end


minetest.register_node("lord_blocks:fern_1", {
	description = "Fern",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"lord_blocks_fern_1.png"},
	inventory_image = "lord_blocks_fern_1.png",
	wield_image = "lord_blocks_fern_1.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1},
	sounds = lord_base.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random fern node
		local stack = ItemStack("lord_blocks:fern_" .. math.random(1, 3))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("lord_blocks:fern_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 3 do
	minetest.register_node("lord_blocks:fern_" .. i, {
		description = "Fern",
		drawtype = "plantlike",
		waving = 1,
		visual_scale = 2,
		tiles = {"lord_blocks_fern_" .. i .. ".png"},
		inventory_image = "lord_blocks_fern_" .. i .. ".png",
		wield_image = "lord_blocks_fern_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory=1},
		drop = "lord_blocks:fern_1",
		sounds = lord_base.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
		},
	})
end


minetest.register_node("lord_blocks:marram_grass_1", {
	description = "Marram Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"lord_blocks_marram_grass_1.png"},
	inventory_image = "lord_blocks_marram_grass_1.png",
	wield_image = "lord_blocks_marram_grass_1.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	sounds = lord_base.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random marram grass node
		local stack = ItemStack("lord_blocks:marram_grass_" .. math.random(1, 3))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("lord_blocks:marram_grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 3 do
	minetest.register_node("lord_blocks:marram_grass_" .. i, {
		description = "Marram Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"lord_blocks_marram_grass_" .. i .. ".png"},
		inventory_image = "lord_blocks_marram_grass_" .. i .. ".png",
		wield_image = "lord_blocks_marram_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, attached_node = 1,
			not_in_creative_inventory=1},
		drop = "lord_blocks:marram_grass_1",
		sounds = lord_base.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
		},
	})
end


minetest.register_node("lord_blocks:bush_stem", {
	description = "Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"lord_blocks_bush_stem.png"},
	inventory_image = "lord_blocks_bush_stem.png",
	wield_image = "lord_blocks_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("lord_blocks:bush_leaves", {
	description = "Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"lord_blocks_leaves_simple.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"lord_blocks:bush_sapling"}, rarity = 5},
			{items = {"lord_blocks:bush_leaves"}}
		}
	},
	sounds = lord_base.node_sound_leaves_defaults(),

	after_place_node = lord_blocks.after_place_leaves,
})

minetest.register_node("lord_blocks:bush_sapling", {
	description = "Bush Sapling",
	drawtype = "plantlike",
	tiles = {"lord_blocks_bush_sapling.png"},
	inventory_image = "lord_blocks_bush_sapling.png",
	wield_image = "lord_blocks_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = lord_base.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = lord_base.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = lord_blocks.sapling_on_place(itemstack, placer, pointed_thing,
			"lord_blocks:bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("lord_blocks:blueberry_bush_leaves_with_berries", {
	description = "Blueberry Bush Leaves with Berries",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"lord_blocks_blueberry_bush_leaves.png^lord_blocks_blueberry_overlay.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1, dig_immediate = 3},
	drop = "lord_items:blueberries",
	sounds = lord_base.node_sound_leaves_defaults(),
	node_dig_prediction = "lord_blocks:blueberry_bush_leaves",

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "lord_blocks:blueberry_bush_leaves"})
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,
})

minetest.register_node("lord_blocks:blueberry_bush_leaves", {
	description = "Blueberry Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"lord_blocks_blueberry_bush_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"lord_blocks:blueberry_bush_sapling"}, rarity = 5},
			{items = {"lord_blocks:blueberry_bush_leaves"}}
		}
	},
	sounds = lord_base.node_sound_leaves_defaults(),

	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) < 11 then
			minetest.get_node_timer(pos):start(200)
		else
			minetest.set_node(pos, {name = "lord_blocks:blueberry_bush_leaves_with_berries"})
		end
	end,

	after_place_node = lord_base.after_place_leaves,
})

minetest.register_node("lord_blocks:blueberry_bush_sapling", {
	description = "Blueberry Bush Sapling",
	drawtype = "plantlike",
	tiles = {"lord_blocks_blueberry_bush_sapling.png"},
	inventory_image = "lord_blocks_blueberry_bush_sapling.png",
	wield_image = "lord_blocks_blueberry_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = lord_base.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = lord_base.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = lord_blocks.sapling_on_place(itemstack, placer, pointed_thing,
			"lord_blocks:blueberry_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("lord_blocks:acacia_bush_stem", {
	description = "Acacia Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"lord_blocks_acacia_bush_stem.png"},
	inventory_image = "lord_blocks_acacia_bush_stem.png",
	wield_image = "lord_blocks_acacia_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("lord_blocks:acacia_bush_leaves", {
	description = "Acacia Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"lord_blocks_acacia_leaves_simple.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"lord_blocks:acacia_bush_sapling"}, rarity = 5},
			{items = {"lord_blocks:acacia_bush_leaves"}}
		}
	},
	sounds = lord_base.node_sound_leaves_defaults(),

	after_place_node = lord_base.after_place_leaves,
})

minetest.register_node("lord_blocks:acacia_bush_sapling", {
	description = "Acacia Bush Sapling",
	drawtype = "plantlike",
	tiles = {"lord_blocks_acacia_bush_sapling.png"},
	inventory_image = "lord_blocks_acacia_bush_sapling.png",
	wield_image = "lord_blocks_acacia_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = lord_base.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, 2 / 16, 3 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = lord_base.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = lord_blocks.sapling_on_place(itemstack, placer, pointed_thing,
			"lord_blocks:acacia_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("lord_blocks:pine_bush_stem", {
	description = "Pine Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"lord_blocks_pine_bush_stem.png"},
	inventory_image = "lord_blocks_pine_bush_stem.png",
	wield_image = "lord_blocks_pine_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("lord_blocks:pine_bush_needles", {
	description = "Pine Bush Needles",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"lord_blocks_pine_needles.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"lord_blocks:pine_bush_sapling"}, rarity = 5},
			{items = {"lord_blocks:pine_bush_needles"}}
		}
	},
	sounds = lord_base.node_sound_leaves_defaults(),

	after_place_node = lord_base.after_place_leaves,
})

minetest.register_node("lord_blocks:pine_bush_sapling", {
	description = "Pine Bush Sapling",
	drawtype = "plantlike",
	tiles = {"lord_blocks_pine_bush_sapling.png"},
	inventory_image = "lord_blocks_pine_bush_sapling.png",
	wield_image = "lord_blocks_pine_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = lord_base.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = lord_base.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = lord_blocks.sapling_on_place(itemstack, placer, pointed_thing,
			"lord_blocks:pine_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("lord_blocks:sand_with_kelp", {
	description = "Kelp",
	drawtype = "plantlike_rooted",
	waving = 1,
	tiles = {"lord_blocks_sand.png"},
	special_tiles = {{name = "lord_blocks_kelp.png", tileable_vertical = true}},
	inventory_image = "lord_blocks_kelp.png",
	paramtype = "light",
	paramtype2 = "leveled",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-2/16, 0.5, -2/16, 2/16, 3.5, 2/16},
		},
	},
	node_dig_prediction = "lord_blocks:sand",
	node_placement_prediction = "",
	sounds = lord_base.node_sound_sand_defaults({
		dig = {name = "lord_base_dig_snappy", gain = 0.2},
		dug = {name = "lord_base_grass_footstep", gain = 0.25},
	}),

	on_place = function(itemstack, placer, pointed_thing)
		-- Call on_rightclick if the pointed node defines it
		if pointed_thing.type == "node" and placer and
				not placer:get_player_control().sneak then
			local node_ptu = minetest.get_node(pointed_thing.under)
			local def_ptu = minetest.registered_nodes[node_ptu.name]
			if def_ptu and def_ptu.on_rightclick then
				return def_ptu.on_rightclick(pointed_thing.under, node_ptu, placer,
					itemstack, pointed_thing)
			end
		end

		local pos = pointed_thing.under
		if minetest.get_node(pos).name ~= "lord_blocks:sand" then
			return itemstack
		end

		local height = math.random(4, 6)
		local pos_top = {x = pos.x, y = pos.y + height, z = pos.z}
		local node_top = minetest.get_node(pos_top)
		local def_top = minetest.registered_nodes[node_top.name]
		local player_name = placer:get_player_name()

		if def_top and def_top.liquidtype == "source" and
				minetest.get_item_group(node_top.name, "water") > 0 then
			if not minetest.is_protected(pos, player_name) and
					not minetest.is_protected(pos_top, player_name) then
				minetest.set_node(pos, {name = "lord_blocks:sand_with_kelp",
					param2 = height * 16})
				if not (creative and creative.is_enabled_for
						and creative.is_enabled_for(player_name)) then
					itemstack:take_item()
				end
			else
				minetest.chat_send_player(player_name, "Node is protected")
				minetest.record_protection_violation(pos, player_name)
			end
		end

		return itemstack
	end,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "lord_blocks:sand"})
	end
})


--
-- Corals
--

minetest.register_node("lord_blocks:coral_green", {
	description = "Green Coral",
	drawtype = "plantlike_rooted",
	waving = 1,
	paramtype = "light",
	tiles = {"lord_blocks_coral_skeleton.png"},
	special_tiles = {{name = "lord_blocks_coral_green.png", tileable_vertical = true}},
	inventory_image = "lord_blocks_coral_green.png",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
		},
	},
	node_dig_prediction = "lord_blocks:coral_skeleton",
	node_placement_prediction = "",
	sounds = lord_base.node_sound_stone_defaults({
		dig = {name = "lord_base_dig_snappy", gain = 0.2},
		dug = {name = "lord_base_grass_footstep", gain = 0.25},
	}),

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" or not placer then
			return itemstack
		end

		local player_name = placer:get_player_name()
		local pos_under = pointed_thing.under
		local pos_above = pointed_thing.above

		if minetest.get_node(pos_under).name ~= "lord_blocks:coral_skeleton" or
				minetest.get_node(pos_above).name ~= "lord_blocks:water_source" then
			return itemstack
		end

		if minetest.is_protected(pos_under, player_name) or
				minetest.is_protected(pos_above, player_name) then
			minetest.chat_send_player(player_name, "Node is protected")
			minetest.record_protection_violation(pos_under, player_name)
			return itemstack
		end

		minetest.set_node(pos_under, {name = "lord_blocks:coral_green"})
		if not (creative and creative.is_enabled_for(player_name)) then
			itemstack:take_item()
		end

		return itemstack
	end,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "lord_blocks:coral_skeleton"})
	end,
})

minetest.register_node("lord_blocks:coral_pink", {
	description = "Pink Coral",
	drawtype = "plantlike_rooted",
	waving = 1,
	paramtype = "light",
	tiles = {"lord_blocks_coral_skeleton.png"},
	special_tiles = {{name = "lord_blocks_coral_pink.png", tileable_vertical = true}},
	inventory_image = "lord_blocks_coral_pink.png",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
		},
	},
	node_dig_prediction = "lord_blocks:coral_skeleton",
	node_placement_prediction = "",
	sounds = lord_base.node_sound_stone_defaults({
		dig = {name = "lord_base_dig_snappy", gain = 0.2},
		dug = {name = "lord_base_grass_footstep", gain = 0.25},
	}),

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" or not placer then
			return itemstack
		end

		local player_name = placer:get_player_name()
		local pos_under = pointed_thing.under
		local pos_above = pointed_thing.above

		if minetest.get_node(pos_under).name ~= "lord_blocks:coral_skeleton" or
				minetest.get_node(pos_above).name ~= "lord_blocks:water_source" then
			return itemstack
		end

		if minetest.is_protected(pos_under, player_name) or
				minetest.is_protected(pos_above, player_name) then
			minetest.chat_send_player(player_name, "Node is protected")
			minetest.record_protection_violation(pos_under, player_name)
			return itemstack
		end

		minetest.set_node(pos_under, {name = "lord_blocks:coral_pink"})
		if not (creative and creative.is_enabled_for(player_name)) then
			itemstack:take_item()
		end

		return itemstack
	end,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "lord_blocks:coral_skeleton"})
	end,
})

minetest.register_node("lord_blocks:coral_cyan", {
	description = "Cyan Coral",
	drawtype = "plantlike_rooted",
	waving = 1,
	paramtype = "light",
	tiles = {"lord_blocks_coral_skeleton.png"},
	special_tiles = {{name = "lord_blocks_coral_cyan.png", tileable_vertical = true}},
	inventory_image = "lord_blocks_coral_cyan.png",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
		},
	},
	node_dig_prediction = "lord_blocks:coral_skeleton",
	node_placement_prediction = "",
	sounds = lord_base.node_sound_stone_defaults({
		dig = {name = "lord_base_dig_snappy", gain = 0.2},
		dug = {name = "lord_base_grass_footstep", gain = 0.25},
	}),

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" or not placer then
			return itemstack
		end

		local player_name = placer:get_player_name()
		local pos_under = pointed_thing.under
		local pos_above = pointed_thing.above

		if minetest.get_node(pos_under).name ~= "lord_blocks:coral_skeleton" or
				minetest.get_node(pos_above).name ~= "lord_blocks:water_source" then
			return itemstack
		end

		if minetest.is_protected(pos_under, player_name) or
				minetest.is_protected(pos_above, player_name) then
			minetest.chat_send_player(player_name, "Node is protected")
			minetest.record_protection_violation(pos_under, player_name)
			return itemstack
		end

		minetest.set_node(pos_under, {name = "lord_blocks:coral_cyan"})
		if not (creative and creative.is_enabled_for(player_name)) then
			itemstack:take_item()
		end

		return itemstack
	end,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "lord_blocks:coral_skeleton"})
	end,
})

minetest.register_node("lord_blocks:coral_brown", {
	description = "Brown Coral",
	tiles = {"lord_blocks_coral_brown.png"},
	groups = {cracky = 3},
	drop = "lord_blocks:coral_skeleton",
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:coral_orange", {
	description = "Orange Coral",
	tiles = {"lord_blocks_coral_orange.png"},
	groups = {cracky = 3},
	drop = "lord_blocks:coral_skeleton",
	sounds = lord_base.node_sound_stone_defaults(),
})

minetest.register_node("lord_blocks:coral_skeleton", {
	description = "Coral Skeleton",
	tiles = {"lord_blocks_coral_skeleton.png"},
	groups = {cracky = 3},
	sounds = lord_base.node_sound_stone_defaults(),
})


--
-- Liquids
--

minetest.register_node("lord_blocks:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "lord_blocks_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "lord_blocks_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lord_blocks:water_flowing",
	liquid_alternative_source = "lord_blocks:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, cools_lava = 1},
	sounds = lord_base.node_sound_water_defaults(),
})

minetest.register_node("lord_blocks:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"lord_blocks_water.png"},
	special_tiles = {
		{
			name = "lord_blocks_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "lord_blocks_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lord_blocks:water_flowing",
	liquid_alternative_source = "lord_blocks:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = lord_base.node_sound_water_defaults(),
})


minetest.register_node("lord_blocks:river_water_source", {
	description = "River Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "lord_blocks_river_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "lord_blocks_river_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lord_blocks:river_water_flowing",
	liquid_alternative_source = "lord_blocks:river_water_source",
	liquid_viscosity = 1,
	-- Not renewable to avoid horizontal spread of water sources in sloping
	-- rivers that can cause water to overflow riverbanks and cause floods.
	-- River water source is instead made renewable by the 'force renew'
	-- option used in the 'bucket' mod by the river water bucket.
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, cools_lava = 1},
	sounds = lord_base.node_sound_water_defaults(),
})

minetest.register_node("lord_blocks:river_water_flowing", {
	description = "Flowing River Water",
	drawtype = "flowingliquid",
	tiles = {"lord_blocks_river_water.png"},
	special_tiles = {
		{
			name = "lord_blocks_river_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "lord_blocks_river_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lord_blocks:river_water_flowing",
	liquid_alternative_source = "lord_blocks:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = lord_base.node_sound_water_defaults(),
})


minetest.register_node("lord_blocks:lava_source", {
	description = "Lava Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "lord_blocks_lava_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "lord_blocks_lava_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	paramtype = "light",
	light_source = 13,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lord_blocks:lava_flowing",
	liquid_alternative_source = "lord_blocks:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1},
})

minetest.register_node("lord_blocks:lava_flowing", {
	description = "Flowing Lava",
	drawtype = "flowingliquid",
	tiles = {"lord_blocks_lava.png"},
	special_tiles = {
		{
			name = "lord_blocks_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "lord_blocks_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = 13,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lord_blocks:lava_flowing",
	liquid_alternative_source = "lord_blocks:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1,
		not_in_creative_inventory = 1},
})

--
-- Tools / "Advanced" crafting / Non-"natural"
--

local bookshelf_formspec =
	"size[8,7;]" ..
	"list[context;books;0,0.3;8,2;]" ..
	"list[current_player;main;0,2.85;8,1;]" ..
	"list[current_player;main;0,4.08;8,3;8]" ..
	"listring[context;books]" ..
	"listring[current_player;main]" ..
	lord_base.get_hotbar_bg(0,2.85)

local function update_bookshelf(pos)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local invlist = inv:get_list("books")

	local formspec = bookshelf_formspec
	-- Inventory slots overlay
	local bx, by = 0, 0.3
	local n_written, n_empty = 0, 0
	for i = 1, 16 do
		if i == 9 then
			bx = 0
			by = by + 1
		end
		local stack = invlist[i]
		if stack:is_empty() then
			formspec = formspec ..
				"image[" .. bx .. "," .. by .. ";1,1;lord_blocks_bookshelf_slot.png]"
		else
			local metatable = stack:get_meta():to_table() or {}
			if metatable.fields and metatable.fields.text then
				n_written = n_written + stack:get_count()
			else
				n_empty = n_empty + stack:get_count()
			end
		end
		bx = bx + 1
	end
	meta:set_string("formspec", formspec)
	if n_written + n_empty == 0 then
		meta:set_string("infotext", "Empty Bookshelf")
	else
		meta:set_string("infotext", "Bookshelf (" .. n_written ..
			" written, " .. n_empty .. " empty books)")
	end
end

minetest.register_node("lord_blocks:bookshelf", {
	description = "Bookshelf",
	tiles = {"lord_blocks_wood.png", "lord_blocks_wood.png", "lord_blocks_wood.png",
		"lord_blocks_wood.png", "lord_blocks_bookshelf.png", "lord_blocks_bookshelf.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = lord_base.node_sound_wood_defaults(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size("books", 8 * 2)
		update_bookshelf(pos)
	end,
	can_dig = function(pos,player)
		local inv = minetest.get_meta(pos):get_inventory()
		return inv:is_empty("books")
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack)
		if minetest.get_item_group(stack:get_name(), "book") ~= 0 then
			return stack:get_count()
		end
		return 0
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff in bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" puts stuff to bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes stuff from bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_blast = function(pos)
		local drops = {}
		lord_base.get_inventory_drops(pos, "books", drops)
		drops[#drops+1] = "lord_blocks:bookshelf"
		minetest.remove_node(pos)
		return drops
	end,
})

local function register_sign(material, desc, def)
	minetest.register_node("lord_blocks:sign_wall_" .. material, {
		description = desc .. " Sign",
		drawtype = "nodebox",
		tiles = {"lord_blocks_sign_wall_" .. material .. ".png"},
		inventory_image = "lord_blocks_sign_" .. material .. ".png",
		wield_image = "lord_blocks_sign_" .. material .. ".png",
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		is_ground_content = false,
		walkable = false,
		node_box = {
			type = "wallmounted",
			wall_top    = {-0.4375, 0.4375, -0.3125, 0.4375, 0.5, 0.3125},
			wall_bottom = {-0.4375, -0.5, -0.3125, 0.4375, -0.4375, 0.3125},
			wall_side   = {-0.5, -0.3125, -0.4375, -0.4375, 0.3125, 0.4375},
		},
		groups = def.groups,
		legacy_wallmounted = true,
		sounds = def.sounds,

		on_construct = function(pos)
			--local n = minetest.get_node(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", "field[text;;${text}]")
		end,
		on_receive_fields = function(pos, formname, fields, sender)
			--print("Sign at "..minetest.pos_to_string(pos).." got "..dump(fields))
			local player_name = sender:get_player_name()
			if minetest.is_protected(pos, player_name) then
				minetest.record_protection_violation(pos, player_name)
				return
			end
			local text = fields.text
			if not text then
				return
			end
			if string.len(text) > 512 then
				minetest.chat_send_player(player_name, "Text too long")
				return
			end
			minetest.log("action", (player_name or "") .. " wrote \"" ..
				text .. "\" to sign at " .. minetest.pos_to_string(pos))
			local meta = minetest.get_meta(pos)
			meta:set_string("text", text)
			meta:set_string("infotext", '"' .. text .. '"')
		end,
	})
end

register_sign("wood", "Wooden", {
	sounds = lord_base.node_sound_wood_defaults(),
	groups = {choppy = 2, attached_node = 1, flammable = 2, oddly_breakable_by_hand = 3}
})

register_sign("steel", "Steel", {
	sounds = lord_base.node_sound_metal_defaults(),
	groups = {cracky = 2, attached_node = 1}
})

minetest.register_node("lord_blocks:ladder_wood", {
	description = "Wooden Ladder",
	drawtype = "signlike",
	tiles = {"lord_blocks_ladder_wood.png"},
	inventory_image = "lord_blocks_ladder_wood.png",
	wield_image = "lord_blocks_ladder_wood.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <lord_blocks>
		--wall_bottom = = <lord_blocks>
		--wall_side = = <lord_blocks>
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
	legacy_wallmounted = true,
	sounds = lord_base.node_sound_wood_defaults(),
})

minetest.register_node("lord_blocks:ladder_steel", {
	description = "Steel Ladder",
	drawtype = "signlike",
	tiles = {"lord_blocks_ladder_steel.png"},
	inventory_image = "lord_blocks_ladder_steel.png",
	wield_image = "lord_blocks_ladder_steel.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <lord_blocks>
		--wall_bottom = = <lord_blocks>
		--wall_side = = <lord_blocks>
	},
	groups = {cracky = 2},
	sounds = lord_base.node_sound_metal_defaults(),
})

lord_blocks.register_fence("lord_blocks:fence_wood", {
	description = "Apple Wood Fence",
	texture = "lord_blocks_fence_wood.png",
	inventory_image = "lord_blocks_fence_overlay.png^lord_blocks_wood.png^" ..
				"lord_blocks_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "lord_blocks_fence_overlay.png^lord_blocks_wood.png^" ..
				"lord_blocks_fence_overlay.png^[makealpha:255,126,126",
	material = "lord_blocks:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults()
})

lord_blocks.register_fence("lord_blocks:fence_acacia_wood", {
	description = "Acacia Wood Fence",
	texture = "lord_blocks_fence_acacia_wood.png",
	inventory_image = "lord_blocks_fence_overlay.png^lord_blocks_acacia_wood.png^" ..
				"lord_blocks_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "lord_blocks_fence_overlay.png^lord_blocks_acacia_wood.png^" ..
				"lord_blocks_fence_overlay.png^[makealpha:255,126,126",
	material = "lord_blocks:acacia_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults()
})

lord_blocks.register_fence("lord_blocks:fence_junglewood", {
	description = "Jungle Wood Fence",
	texture = "lord_blocks_fence_junglewood.png",
	inventory_image = "lord_blocks_fence_overlay.png^lord_blocks_junglewood.png^" ..
				"lord_blocks_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "lord_blocks_fence_overlay.png^lord_blocks_junglewood.png^" ..
				"lord_blocks_fence_overlay.png^[makealpha:255,126,126",
	material = "lord_blocks:junglewood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults()
})

lord_blocks.register_fence("lord_blocks:fence_pine_wood", {
	description = "Pine Wood Fence",
	texture = "lord_blocks_fence_pine_wood.png",
	inventory_image = "lord_blocks_fence_overlay.png^lord_blocks_pine_wood.png^" ..
				"lord_blocks_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "lord_blocks_fence_overlay.png^lord_blocks_pine_wood.png^" ..
				"lord_blocks_fence_overlay.png^[makealpha:255,126,126",
	material = "lord_blocks:pine_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = lord_base.node_sound_wood_defaults()
})

lord_blocks.register_fence("lord_blocks:fence_aspen_wood", {
	description = "Aspen Wood Fence",
	texture = "lord_blocks_fence_aspen_wood.png",
	inventory_image = "lord_blocks_fence_overlay.png^lord_blocks_aspen_wood.png^" ..
				"lord_blocks_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "lord_blocks_fence_overlay.png^lord_blocks_aspen_wood.png^" ..
				"lord_blocks_fence_overlay.png^[makealpha:255,126,126",
	material = "lord_blocks:aspen_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = lord_base.node_sound_wood_defaults()
})

lord_blocks.register_fence_rail("lord_blocks:fence_rail_wood", {
	description = "Apple Wood Fence Rail",
	texture = "lord_blocks_fence_rail_wood.png",
	inventory_image = "lord_blocks_fence_rail_overlay.png^lord_blocks_wood.png^" ..
				"lord_blocks_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "lord_blocks_fence_rail_overlay.png^lord_blocks_wood.png^" ..
				"lord_blocks_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "lord_blocks:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults()
})

lord_blocks.register_fence_rail("lord_blocks:fence_rail_acacia_wood", {
	description = "Acacia Wood Fence Rail",
	texture = "lord_blocks_fence_rail_acacia_wood.png",
	inventory_image = "lord_blocks_fence_rail_overlay.png^lord_blocks_acacia_wood.png^" ..
				"lord_blocks_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "lord_blocks_fence_rail_overlay.png^lord_blocks_acacia_wood.png^" ..
				"lord_blocks_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "lord_blocks:acacia_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults()
})

lord_blocks.register_fence_rail("lord_blocks:fence_rail_junglewood", {
	description = "Jungle Wood Fence Rail",
	texture = "lord_blocks_fence_rail_junglewood.png",
	inventory_image = "lord_blocks_fence_rail_overlay.png^lord_blocks_junglewood.png^" ..
				"lord_blocks_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "lord_blocks_fence_rail_overlay.png^lord_blocks_junglewood.png^" ..
				"lord_blocks_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "lord_blocks:junglewood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults()
})

lord_blocks.register_fence_rail("lord_blocks:fence_rail_pine_wood", {
	description = "Pine Wood Fence Rail",
	texture = "lord_blocks_fence_rail_pine_wood.png",
	inventory_image = "lord_blocks_fence_rail_overlay.png^lord_blocks_pine_wood.png^" ..
				"lord_blocks_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "lord_blocks_fence_rail_overlay.png^lord_blocks_pine_wood.png^" ..
				"lord_blocks_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "lord_blocks:pine_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = lord_base.node_sound_wood_defaults()
})

lord_blocks.register_fence_rail("lord_blocks:fence_rail_aspen_wood", {
	description = "Aspen Wood Fence Rail",
	texture = "lord_blocks_fence_rail_aspen_wood.png",
	inventory_image = "lord_blocks_fence_rail_overlay.png^lord_blocks_aspen_wood.png^" ..
				"lord_blocks_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "lord_blocks_fence_rail_overlay.png^lord_blocks_aspen_wood.png^" ..
				"lord_blocks_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "lord_blocks:aspen_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults()
})

minetest.register_node("lord_blocks:glass", {
	description = "Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"lord_blocks_glass.png", "lord_blocks_glass_detail.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = lord_base.node_sound_glass_defaults(),
})

minetest.register_node("lord_blocks:obsidian_glass", {
	description = "Obsidian Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"lord_blocks_obsidian_glass.png", "lord_blocks_obsidian_glass_detail.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	is_ground_content = false,
	sunlight_propagates = true,
	sounds = lord_base.node_sound_glass_defaults(),
	groups = {cracky = 3},
})


minetest.register_node("lord_blocks:brick", {
	description = "Brick Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lord_blocks_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = lord_base.node_sound_stone_defaults(),
})


minetest.register_node("lord_blocks:meselamp", {
	description = "Mese Lamp",
	drawtype = "glasslike",
	tiles = {"lord_blocks_meselamp.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = lord_base.node_sound_glass_defaults(),
	light_source = 14,
})

minetest.register_node("lord_blocks:mese_post_light", {
	description = "Mese Post Light",
	tiles = {"lord_blocks_mese_post_light_top.png", "lord_blocks_mese_post_light_top.png",
		"lord_blocks_mese_post_light_side_dark.png", "lord_blocks_mese_post_light_side_dark.png",
		"lord_blocks_mese_post_light_side.png", "lord_blocks_mese_post_light_side.png"},
	wield_image = "lord_blocks_mese_post_light_side.png",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-2 / 16, -8 / 16, -2 / 16, 2 / 16, 8 / 16, 2 / 16},
		},
	},
	paramtype = "light",
	light_source = 14,
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = lord_base.node_sound_wood_defaults(),
})

--
-- Misc
--

minetest.register_node("lord_blocks:cloud", {
	description = "Cloud",
	tiles = {"lord_blocks_cloud.png"},
	is_ground_content = false,
	sounds = lord_base.node_sound_defaults(),
	groups = {not_in_creative_inventory = 1},
})

--
-- register trees for leafdecay
--

if minetest.get_mapgen_setting("mg_name") == "v6" then
	lord_base.register_leafdecay({
		trunks = {"lord_blocks:tree"},
		leaves = {"lord_blocks:apple", "lord_blocks:leaves"},
		radius = 2,
	})

	lord_base.register_leafdecay({
		trunks = {"lord_blocks:jungletree"},
		leaves = {"lord_blocks:jungleleaves"},
		radius = 3,
	})
else
	lord_base.register_leafdecay({
		trunks = {"lord_blocks:tree"},
		leaves = {"lord_blocks:apple", "lord_blocks:leaves"},
		radius = 3,
	})

	lord_base.register_leafdecay({
		trunks = {"lord_blocks:jungletree"},
		leaves = {"lord_blocks:jungleleaves"},
		radius = 2,
	})
end

lord_base.register_leafdecay({
	trunks = {"lord_blocks:pine_tree"},
	leaves = {"lord_blocks:pine_needles"},
	radius = 3,
})

lord_base.register_leafdecay({
	trunks = {"lord_blocks:acacia_tree"},
	leaves = {"lord_blocks:acacia_leaves"},
	radius = 2,
})

lord_base.register_leafdecay({
	trunks = {"lord_blocks:aspen_tree"},
	leaves = {"lord_blocks:aspen_leaves"},
	radius = 3,
})

lord_base.register_leafdecay({
	trunks = {"lord_blocks:bush_stem"},
	leaves = {"lord_blocks:bush_leaves"},
	radius = 1,
})

lord_base.register_leafdecay({
	trunks = {"lord_blocks:acacia_bush_stem"},
	leaves = {"lord_blocks:acacia_bush_leaves"},
	radius = 1,
})

lord_base.register_leafdecay({
	trunks = {"lord_blocks:pine_bush_stem"},
	leaves = {"lord_blocks:pine_bush_needles"},
	radius = 1,
})


lord_base.chest.register_chest("chest", {
	description = "Chest",
	tiles = {
		"lord_blocks_chest_top.png",
		"lord_blocks_chest_top.png",
		"lord_blocks_chest_side.png",
		"lord_blocks_chest_side.png",
		"lord_blocks_chest_front.png",
		"lord_blocks_chest_inside.png"
	},
	sounds = lord_base.node_sound_wood_defaults(),
	sound_open = "lord_base_chest_open",
	sound_close = "lord_base_chest_close",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
})

lord_base.chest.register_chest("chest_locked", {
	description = "Locked Chest",
	tiles = {
		"lord_blocks_chest_top.png",
		"lord_blocks_chest_top.png",
		"lord_blocks_chest_side.png",
		"lord_blocks_chest_side.png",
		"lord_blocks_chest_lock.png",
		"lord_blocks_chest_inside.png"
	},
	sounds = lord_base.node_sound_wood_defaults(),
	sound_open = "lord_base_chest_open",
	sound_close = "lord_base_chest_close",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
	protected = true,
})
