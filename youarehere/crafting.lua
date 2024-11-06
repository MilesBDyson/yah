if minetest.get_modpath("default") then


	minetest.register_craft({
		output = "youarehere:yah",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot",""},
			{"", "default:steel_ingot",""},
			{"", "default:steel_ingot","default:steel_ingot"},
		}
	})







	minetest.register_craft({
		output = "youarehere:yahstreetsign",
		recipe = {
			{"default:steel_ingot", "","default:steel_ingot"},
			{"", "default:steel_ingot",""},
			{"default:steel_ingot", "","default:steel_ingot"},
		}
	})

end



