
local S = default.get_translator

function default.yah_formspec(pos)
	local node = minetest.get_node(pos)
	local formspec = "size[4,1.25]"..
		"label[1.25,0.0;You Are Here]"..
		"field[0.75,0.75;3,1.2;size; ;"..pos.x..","..pos.y..","..pos.z.."]"
	return formspec
end

minetest.register_node("youarehere:yah", {
   description = S("YAH"),
	tiles = {
		"default_steel_block.png",
		"default_steel_block.png",
		"default_steel_block.png",
		"default_steel_block.png",
		"default_steel_block.png",
		"default_steel_block.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	groups = {cracky = 3, stone = 1},
	protected = true,
   use_texture_alpha = "clip",
	drop = "youarehere:yah",
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		meta:set_string("formspec", default.yah_formspec(pos))
		meta:set_string("infotext", pos.x..","..pos.y..","..pos.z)
	end,
})
