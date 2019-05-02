-- mods/lord_base/crafting.lua

minetest.register_craft({
	output = 'lord_base:wood 4',
	recipe = {
		{'lord_base:tree'},
	}
})

minetest.register_craft({
	output = 'lord_base:junglewood 4',
	recipe = {
		{'lord_base:jungletree'},
	}
})

minetest.register_craft({
	output = 'lord_base:pine_wood 4',
	recipe = {
		{'lord_base:pine_tree'},
	}
})

minetest.register_craft({
	output = 'lord_base:acacia_wood 4',
	recipe = {
		{'lord_base:acacia_tree'},
	}
})

minetest.register_craft({
	output = 'lord_base:aspen_wood 4',
	recipe = {
		{'lord_base:aspen_tree'},
	}
})

minetest.register_craft({
	output = 'lord_base:wood',
	recipe = {
		{'lord_base:bush_stem'},
	}
})

minetest.register_craft({
	output = 'lord_base:acacia_wood',
	recipe = {
		{'lord_base:acacia_bush_stem'},
	}
})

minetest.register_craft({
	output = "lord_base:pine_wood",
	recipe = {
		{"lord_base:pine_bush_stem"},
	}
})

minetest.register_craft({
	output = 'lord_base:stick 4',
	recipe = {
		{'group:wood'},
	}
})

minetest.register_craft({
	output = 'lord_base:sign_wall_steel 3',
	recipe = {
		{'lord_base:steel_ingot', 'lord_base:steel_ingot', 'lord_base:steel_ingot'},
		{'lord_base:steel_ingot', 'lord_base:steel_ingot', 'lord_base:steel_ingot'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'lord_base:sign_wall_wood 3',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'lord_base:torch 4',
	recipe = {
		{'lord_base:coal_lump'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:pick_wood',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'lord_base:pick_stone',
	recipe = {
		{'group:stone', 'group:stone', 'group:stone'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'lord_base:pick_steel',
	recipe = {
		{'lord_base:steel_ingot', 'lord_base:steel_ingot', 'lord_base:steel_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'lord_base:pick_bronze',
	recipe = {
		{'lord_base:bronze_ingot', 'lord_base:bronze_ingot', 'lord_base:bronze_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'lord_base:pick_mese',
	recipe = {
		{'lord_base:mese_crystal', 'lord_base:mese_crystal', 'lord_base:mese_crystal'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'lord_base:pick_diamond',
	recipe = {
		{'lord_base:diamond', 'lord_base:diamond', 'lord_base:diamond'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'lord_base:shovel_wood',
	recipe = {
		{'group:wood'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:shovel_stone',
	recipe = {
		{'group:stone'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:shovel_steel',
	recipe = {
		{'lord_base:steel_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:shovel_bronze',
	recipe = {
		{'lord_base:bronze_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:shovel_mese',
	recipe = {
		{'lord_base:mese_crystal'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:shovel_diamond',
	recipe = {
		{'lord_base:diamond'},
		{'group:stick'},
		{'group:stick'},
	}
})

-- Axes
-- Recipes face left to match appearence in textures and inventory

minetest.register_craft({
	output = 'lord_base:axe_wood',
	recipe = {
		{'group:wood', 'group:wood'},
		{'group:wood', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:axe_stone',
	recipe = {
		{'group:stone', 'group:stone'},
		{'group:stone', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:axe_steel',
	recipe = {
		{'lord_base:steel_ingot', 'lord_base:steel_ingot'},
		{'lord_base:steel_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:axe_bronze',
	recipe = {
		{'lord_base:bronze_ingot', 'lord_base:bronze_ingot'},
		{'lord_base:bronze_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:axe_mese',
	recipe = {
		{'lord_base:mese_crystal', 'lord_base:mese_crystal'},
		{'lord_base:mese_crystal', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:axe_diamond',
	recipe = {
		{'lord_base:diamond', 'lord_base:diamond'},
		{'lord_base:diamond', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:sword_wood',
	recipe = {
		{'group:wood'},
		{'group:wood'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:sword_stone',
	recipe = {
		{'group:stone'},
		{'group:stone'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:sword_steel',
	recipe = {
		{'lord_base:steel_ingot'},
		{'lord_base:steel_ingot'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:sword_bronze',
	recipe = {
		{'lord_base:bronze_ingot'},
		{'lord_base:bronze_ingot'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:sword_mese',
	recipe = {
		{'lord_base:mese_crystal'},
		{'lord_base:mese_crystal'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:sword_diamond',
	recipe = {
		{'lord_base:diamond'},
		{'lord_base:diamond'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'lord_base:skeleton_key',
	recipe = {
		{'lord_base:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'lord_base:chest',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', '', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

minetest.register_craft({
	output = 'lord_base:chest_locked',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'lord_base:steel_ingot', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

minetest.register_craft( {
	type = "shapeless",
	output = "lord_base:chest_locked",
	recipe = {"lord_base:chest", "lord_base:steel_ingot"},
})

minetest.register_craft({
	output = 'lord_base:furnace',
	recipe = {
		{'group:stone', 'group:stone', 'group:stone'},
		{'group:stone', '', 'group:stone'},
		{'group:stone', 'group:stone', 'group:stone'},
	}
})

minetest.register_craft({
	output = 'lord_base:coalblock',
	recipe = {
		{'lord_base:coal_lump', 'lord_base:coal_lump', 'lord_base:coal_lump'},
		{'lord_base:coal_lump', 'lord_base:coal_lump', 'lord_base:coal_lump'},
		{'lord_base:coal_lump', 'lord_base:coal_lump', 'lord_base:coal_lump'},
	}
})

minetest.register_craft({
	output = 'lord_base:coal_lump 9',
	recipe = {
		{'lord_base:coalblock'},
	}
})

minetest.register_craft({
	output = 'lord_base:steelblock',
	recipe = {
		{'lord_base:steel_ingot', 'lord_base:steel_ingot', 'lord_base:steel_ingot'},
		{'lord_base:steel_ingot', 'lord_base:steel_ingot', 'lord_base:steel_ingot'},
		{'lord_base:steel_ingot', 'lord_base:steel_ingot', 'lord_base:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'lord_base:steel_ingot 9',
	recipe = {
		{'lord_base:steelblock'},
	}
})

minetest.register_craft({
	output = 'lord_base:copperblock',
	recipe = {
		{'lord_base:copper_ingot', 'lord_base:copper_ingot', 'lord_base:copper_ingot'},
		{'lord_base:copper_ingot', 'lord_base:copper_ingot', 'lord_base:copper_ingot'},
		{'lord_base:copper_ingot', 'lord_base:copper_ingot', 'lord_base:copper_ingot'},
	}
})

minetest.register_craft({
	output = 'lord_base:copper_ingot 9',
	recipe = {
		{'lord_base:copperblock'},
	}
})

minetest.register_craft({
	output = "lord_base:tinblock",
	recipe = {
		{"lord_base:tin_ingot", "lord_base:tin_ingot", "lord_base:tin_ingot"},
		{"lord_base:tin_ingot", "lord_base:tin_ingot", "lord_base:tin_ingot"},
		{"lord_base:tin_ingot", "lord_base:tin_ingot", "lord_base:tin_ingot"},
	}
})

minetest.register_craft({
	output = "lord_base:tin_ingot 9",
	recipe = {
		{"lord_base:tinblock"},
	}
})

minetest.register_craft({
	output = "lord_base:bronze_ingot 9",
	recipe = {
		{"lord_base:copper_ingot", "lord_base:copper_ingot", "lord_base:copper_ingot"},
		{"lord_base:copper_ingot", "lord_base:tin_ingot", "lord_base:copper_ingot"},
		{"lord_base:copper_ingot", "lord_base:copper_ingot", "lord_base:copper_ingot"},
	}
})

minetest.register_craft({
	output = 'lord_base:bronzeblock',
	recipe = {
		{'lord_base:bronze_ingot', 'lord_base:bronze_ingot', 'lord_base:bronze_ingot'},
		{'lord_base:bronze_ingot', 'lord_base:bronze_ingot', 'lord_base:bronze_ingot'},
		{'lord_base:bronze_ingot', 'lord_base:bronze_ingot', 'lord_base:bronze_ingot'},
	}
})

minetest.register_craft({
	output = 'lord_base:bronze_ingot 9',
	recipe = {
		{'lord_base:bronzeblock'},
	}
})

minetest.register_craft({
	output = 'lord_base:goldblock',
	recipe = {
		{'lord_base:gold_ingot', 'lord_base:gold_ingot', 'lord_base:gold_ingot'},
		{'lord_base:gold_ingot', 'lord_base:gold_ingot', 'lord_base:gold_ingot'},
		{'lord_base:gold_ingot', 'lord_base:gold_ingot', 'lord_base:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'lord_base:gold_ingot 9',
	recipe = {
		{'lord_base:goldblock'},
	}
})

minetest.register_craft({
	output = 'lord_base:diamondblock',
	recipe = {
		{'lord_base:diamond', 'lord_base:diamond', 'lord_base:diamond'},
		{'lord_base:diamond', 'lord_base:diamond', 'lord_base:diamond'},
		{'lord_base:diamond', 'lord_base:diamond', 'lord_base:diamond'},
	}
})

minetest.register_craft({
	output = 'lord_base:diamond 9',
	recipe = {
		{'lord_base:diamondblock'},
	}
})

minetest.register_craft({
	output = "lord_base:sandstone",
	recipe = {
		{"lord_base:sand", "lord_base:sand"},
		{"lord_base:sand", "lord_base:sand"},
	}
})

minetest.register_craft({
	output = "lord_base:sand 4",
	recipe = {
		{"lord_base:sandstone"},
	}
})

minetest.register_craft({
	output = "lord_base:sandstonebrick 4",
	recipe = {
		{"lord_base:sandstone", "lord_base:sandstone"},
		{"lord_base:sandstone", "lord_base:sandstone"},
	}
})

minetest.register_craft({
	output = "lord_base:sandstone_block 9",
	recipe = {
		{"lord_base:sandstone", "lord_base:sandstone", "lord_base:sandstone"},
		{"lord_base:sandstone", "lord_base:sandstone", "lord_base:sandstone"},
		{"lord_base:sandstone", "lord_base:sandstone", "lord_base:sandstone"},
	}
})

minetest.register_craft({
	output = "lord_base:desert_sandstone",
	recipe = {
		{"lord_base:desert_sand", "lord_base:desert_sand"},
		{"lord_base:desert_sand", "lord_base:desert_sand"},
	}
})

minetest.register_craft({
	output = "lord_base:desert_sand 4",
	recipe = {
		{"lord_base:desert_sandstone"},
	}
})

minetest.register_craft({
	output = "lord_base:desert_sandstone_brick 4",
	recipe = {
		{"lord_base:desert_sandstone", "lord_base:desert_sandstone"},
		{"lord_base:desert_sandstone", "lord_base:desert_sandstone"},
	}
})

minetest.register_craft({
	output = "lord_base:desert_sandstone_block 9",
	recipe = {
		{"lord_base:desert_sandstone", "lord_base:desert_sandstone", "lord_base:desert_sandstone"},
		{"lord_base:desert_sandstone", "lord_base:desert_sandstone", "lord_base:desert_sandstone"},
		{"lord_base:desert_sandstone", "lord_base:desert_sandstone", "lord_base:desert_sandstone"},
	}
})

minetest.register_craft({
	output = "lord_base:silver_sandstone",
	recipe = {
		{"lord_base:silver_sand", "lord_base:silver_sand"},
		{"lord_base:silver_sand", "lord_base:silver_sand"},
	}
})

minetest.register_craft({
	output = "lord_base:silver_sand 4",
	recipe = {
		{"lord_base:silver_sandstone"},
	}
})

minetest.register_craft({
	output = "lord_base:silver_sandstone_brick 4",
	recipe = {
		{"lord_base:silver_sandstone", "lord_base:silver_sandstone"},
		{"lord_base:silver_sandstone", "lord_base:silver_sandstone"},
	}
})

minetest.register_craft({
	output = "lord_base:silver_sandstone_block 9",
	recipe = {
		{"lord_base:silver_sandstone", "lord_base:silver_sandstone", "lord_base:silver_sandstone"},
		{"lord_base:silver_sandstone", "lord_base:silver_sandstone", "lord_base:silver_sandstone"},
		{"lord_base:silver_sandstone", "lord_base:silver_sandstone", "lord_base:silver_sandstone"},
	}
})

minetest.register_craft({
	output = 'lord_base:clay',
	recipe = {
		{'lord_base:clay_lump', 'lord_base:clay_lump'},
		{'lord_base:clay_lump', 'lord_base:clay_lump'},
	}
})

minetest.register_craft({
	output = 'lord_base:clay_lump 4',
	recipe = {
		{'lord_base:clay'},
	}
})

minetest.register_craft({
	output = 'lord_base:brick',
	recipe = {
		{'lord_base:clay_brick', 'lord_base:clay_brick'},
		{'lord_base:clay_brick', 'lord_base:clay_brick'},
	}
})

minetest.register_craft({
	output = 'lord_base:clay_brick 4',
	recipe = {
		{'lord_base:brick'},
	}
})

minetest.register_craft({
	output = 'lord_base:paper',
	recipe = {
		{'lord_base:papyrus', 'lord_base:papyrus', 'lord_base:papyrus'},
	}
})

minetest.register_craft({
	output = 'lord_base:book',
	recipe = {
		{'lord_base:paper'},
		{'lord_base:paper'},
		{'lord_base:paper'},
	}
})

minetest.register_craft({
	output = 'lord_base:bookshelf',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'lord_base:book', 'lord_base:book', 'lord_base:book'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

minetest.register_craft({
	output = "lord_base:ladder_wood 5",
	recipe = {
		{"group:stick", "", "group:stick"},
		{"group:stick", "group:stick", "group:stick"},
		{"group:stick", "", "group:stick"},
	}
})

minetest.register_craft({
	output = 'lord_base:ladder_steel 15',
	recipe = {
		{'lord_base:steel_ingot', '', 'lord_base:steel_ingot'},
		{'lord_base:steel_ingot', 'lord_base:steel_ingot', 'lord_base:steel_ingot'},
		{'lord_base:steel_ingot', '', 'lord_base:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'lord_base:mese',
	recipe = {
		{'lord_base:mese_crystal', 'lord_base:mese_crystal', 'lord_base:mese_crystal'},
		{'lord_base:mese_crystal', 'lord_base:mese_crystal', 'lord_base:mese_crystal'},
		{'lord_base:mese_crystal', 'lord_base:mese_crystal', 'lord_base:mese_crystal'},
	}
})

minetest.register_craft({
	output = 'lord_base:mese_crystal 9',
	recipe = {
		{'lord_base:mese'},
	}
})

minetest.register_craft({
	output = 'lord_base:mese_crystal_fragment 9',
	recipe = {
		{'lord_base:mese_crystal'},
	}
})

minetest.register_craft({
	output = "lord_base:mese_crystal",
	recipe = {
		{"lord_base:mese_crystal_fragment", "lord_base:mese_crystal_fragment", "lord_base:mese_crystal_fragment"},
		{"lord_base:mese_crystal_fragment", "lord_base:mese_crystal_fragment", "lord_base:mese_crystal_fragment"},
		{"lord_base:mese_crystal_fragment", "lord_base:mese_crystal_fragment", "lord_base:mese_crystal_fragment"},
	}
})

minetest.register_craft({
	output = 'lord_base:meselamp',
	recipe = {
		{'lord_base:glass'},
		{'lord_base:mese_crystal'},
	}
})

minetest.register_craft({
	output = "lord_base:mese_post_light 3",
	recipe = {
		{"", "lord_base:glass", ""},
		{"lord_base:mese_crystal", "lord_base:mese_crystal", "lord_base:mese_crystal"},
		{"", "group:wood", ""},
	}
})

minetest.register_craft({
	output = 'lord_base:obsidian_shard 9',
	recipe = {
		{'lord_base:obsidian'}
	}
})

minetest.register_craft({
	output = 'lord_base:obsidian',
	recipe = {
		{'lord_base:obsidian_shard', 'lord_base:obsidian_shard', 'lord_base:obsidian_shard'},
		{'lord_base:obsidian_shard', 'lord_base:obsidian_shard', 'lord_base:obsidian_shard'},
		{'lord_base:obsidian_shard', 'lord_base:obsidian_shard', 'lord_base:obsidian_shard'},
	}
})

minetest.register_craft({
	output = 'lord_base:obsidianbrick 4',
	recipe = {
		{'lord_base:obsidian', 'lord_base:obsidian'},
		{'lord_base:obsidian', 'lord_base:obsidian'}
	}
})

minetest.register_craft({
	output = 'lord_base:obsidian_block 9',
	recipe = {
		{'lord_base:obsidian', 'lord_base:obsidian', 'lord_base:obsidian'},
		{'lord_base:obsidian', 'lord_base:obsidian', 'lord_base:obsidian'},
		{'lord_base:obsidian', 'lord_base:obsidian', 'lord_base:obsidian'},
	}
})

minetest.register_craft({
	output = 'lord_base:stonebrick 4',
	recipe = {
		{'lord_base:stone', 'lord_base:stone'},
		{'lord_base:stone', 'lord_base:stone'},
	}
})

minetest.register_craft({
	output = 'lord_base:stone_block 9',
	recipe = {
		{'lord_base:stone', 'lord_base:stone', 'lord_base:stone'},
		{'lord_base:stone', 'lord_base:stone', 'lord_base:stone'},
		{'lord_base:stone', 'lord_base:stone', 'lord_base:stone'},
	}
})

minetest.register_craft({
	output = 'lord_base:desert_stonebrick 4',
	recipe = {
		{'lord_base:desert_stone', 'lord_base:desert_stone'},
		{'lord_base:desert_stone', 'lord_base:desert_stone'},
	}
})

minetest.register_craft({
	output = 'lord_base:desert_stone_block 9',
	recipe = {
		{'lord_base:desert_stone', 'lord_base:desert_stone', 'lord_base:desert_stone'},
		{'lord_base:desert_stone', 'lord_base:desert_stone', 'lord_base:desert_stone'},
		{'lord_base:desert_stone', 'lord_base:desert_stone', 'lord_base:desert_stone'},
	}
})

minetest.register_craft({
	output = 'lord_base:snowblock',
	recipe = {
		{'lord_base:snow', 'lord_base:snow', 'lord_base:snow'},
		{'lord_base:snow', 'lord_base:snow', 'lord_base:snow'},
		{'lord_base:snow', 'lord_base:snow', 'lord_base:snow'},
	}
})

minetest.register_craft({
	output = 'lord_base:snow 9',
	recipe = {
		{'lord_base:snowblock'},
	}
})

minetest.register_craft({
	output = "lord_base:emergent_jungle_sapling",
	recipe = {
		{"lord_base:junglesapling", "lord_base:junglesapling", "lord_base:junglesapling"},
		{"lord_base:junglesapling", "lord_base:junglesapling", "lord_base:junglesapling"},
		{"lord_base:junglesapling", "lord_base:junglesapling", "lord_base:junglesapling"},
	}
})

minetest.register_craft({
	output = "lord_base:large_cactus_seedling",
	recipe = {
		{"", "lord_base:cactus", ""},
		{"lord_base:cactus", "lord_base:cactus", "lord_base:cactus"},
		{"", "lord_base:cactus", ""},
	}
})


--
-- Crafting (tool repair)
--

minetest.register_craft({
	type = "toolrepair",
	additional_wear = -0.02,
})


--
-- Cooking recipes
--

minetest.register_craft({
	type = "cooking",
	output = "lord_base:glass",
	recipe = "group:sand",
})

minetest.register_craft({
	type = "cooking",
	output = "lord_base:obsidian_glass",
	recipe = "lord_base:obsidian_shard",
})

minetest.register_craft({
	type = "cooking",
	output = "lord_base:stone",
	recipe = "lord_base:cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "lord_base:stone",
	recipe = "lord_base:mossycobble",
})

minetest.register_craft({
	type = "cooking",
	output = "lord_base:desert_stone",
	recipe = "lord_base:desert_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "lord_base:steel_ingot",
	recipe = "lord_base:iron_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "lord_base:copper_ingot",
	recipe = "lord_base:copper_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "lord_base:tin_ingot",
	recipe = "lord_base:tin_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "lord_base:gold_ingot",
	recipe = "lord_base:gold_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "lord_base:clay_brick",
	recipe = "lord_base:clay_lump",
})

minetest.register_craft({
	type = 'cooking',
	output = 'lord_base:gold_ingot',
	recipe = 'lord_base:skeleton_key',
	cooktime = 5,
})

minetest.register_craft({
	type = 'cooking',
	output = 'lord_base:gold_ingot',
	recipe = 'lord_base:key',
	cooktime = 5,
})


--
-- Fuels
--

-- Support use of group:tree, includes lord_base:tree which has the same burn time
minetest.register_craft({
	type = "fuel",
	recipe = "group:tree",
	burntime = 30,
})

-- Burn time for all woods are in order of wood density,
-- which is also the order of wood colour darkness:
-- aspen, pine, apple, acacia, jungle

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:aspen_tree",
	burntime = 22,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:pine_tree",
	burntime = 26,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:acacia_tree",
	burntime = 34,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:jungletree",
	burntime = 38,
})


-- Support use of group:wood, includes lord_base:wood which has the same burn time
minetest.register_craft({
	type = "fuel",
	recipe = "group:wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:aspen_wood",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:pine_wood",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:acacia_wood",
	burntime = 8,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:junglewood",
	burntime = 9,
})


-- Support use of group:sapling, includes lord_base:sapling which has the same burn time
minetest.register_craft({
	type = "fuel",
	recipe = "group:sapling",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:bush_sapling",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:acacia_bush_sapling",
	burntime = 4,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:pine_bush_sapling",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:aspen_sapling",
	burntime = 4,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:pine_sapling",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:acacia_sapling",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:junglesapling",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:emergent_jungle_sapling",
	burntime = 7,
})


minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:fence_aspen_wood",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:fence_pine_wood",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:fence_wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:fence_acacia_wood",
	burntime = 8,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:fence_junglewood",
	burntime = 9,
})


minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:fence_rail_aspen_wood",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:fence_rail_pine_wood",
	burntime = 4,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:fence_rail_wood",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:fence_rail_acacia_wood",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:fence_rail_junglewood",
	burntime = 7,
})


minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:bush_stem",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:acacia_bush_stem",
	burntime = 8,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:pine_bush_stem",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:junglegrass",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:leaves",
	burntime = 4,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:cactus",
	burntime = 15,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:large_cactus_seedling",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:papyrus",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:bookshelf",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:ladder_wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:lava_source",
	burntime = 60,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:torch",
	burntime = 4,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:sign_wall_wood",
	burntime = 10,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:chest",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:chest_locked",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:coal_lump",
	burntime = 40,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:coalblock",
	burntime = 370,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:grass_1",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:dry_grass_1",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:fern_1",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:marram_grass_1",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:paper",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:book",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:book_written",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:dry_shrub",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:stick",
	burntime = 1,
})


minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:pick_wood",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:shovel_wood",
	burntime = 4,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:axe_wood",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_base:sword_wood",
	burntime = 5,
})
