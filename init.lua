--
-- Ores
--

--
-- Nodes
--

--
-- Craft Items
--
-- Intllib
local bacon_path = minetest.get_modpath("bacon")



-- Salted Pork
minetest.register_craftitem("bacon:salted", {
	description = ("Salted Pork"),
  craft_type = "smoking",
	inventory_image = "bacon_pork_salted.png",
	on_use = minetest.item_eat(2),
	groups = {smokeable = 1, eatable = 1, food_meat = 1, food_pork = 1, flammable = 2},
})

-- Smoked Bacon
minetest.register_craftitem("bacon:smoked", {
	description = ("Smoked Bacon"),
	inventory_image = "bacon_raw.png",
	on_use = minetest.item_eat(3),
	groups = {eatable = 1, food_meat = 1, food_pork = 1, flammable = 2},
})

-- Smoked Bacon
minetest.register_craftitem("bacon:cooked", {
	description = ("Cooked Bacon"),
	inventory_image = "bacon_cooked.png",
	on_use = minetest.item_eat(4),
	groups = {eatable = 1, food_meat = 1, food_pork = 1, flammable = 2},
})

--
-- Crafts
--

-- Salted Pork
minetest.register_craft({
	output = 'bacon:salted',
	recipe = {
         {'farming:salt' },
		     {'mobs:pork_raw' },
	}        
})

--
-- Smoked Bacon
--
minetest.register_craft({
  type="cooking",
	craft_type = "smoking",
	output = "bacon:smoked",
	recipe = "bacon:salted",
	cooktime = 5,
  
})



-- Smoker
-- Load files


dofile(bacon_path.."/woodchips.lua")
dofile(bacon_path.."/smoker.lua")