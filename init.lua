
local bacon_path = minetest.get_modpath("bacon")


-- Load files
dofile(bacon_path.."/woodchips.lua")
dofile(bacon_path.."/smoker.lua")
dofile(bacon_path.."/bacon.lua")

smoker.register_craft({
        type="cooking",
	output = "bacon:smoked",
	recipe = "bacon:salted",
	cooktime = 5,
})