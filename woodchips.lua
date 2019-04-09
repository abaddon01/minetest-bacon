-- straw
minetest.register_node("bacon:oakwoodchips", {
    description = ("Oak WoodChips"),
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",

    tiles = {"bacon_oakwoodchips.png"},
    is_ground_content = false,
    groups = {smoker_fuel = 1, snappy = 3, flammable = 4, oddly_breakable_by_hand = 2, fall_damage_add_percent = -10},
    sounds = default.node_sound_leaves_defaults(),
    node_box = {
      type = "fixed",
      fixed = {-0.5, -31 / 64, -0.5, 0.5, -15 / 32, 0.5}
    },
    selection_box = {
      type = "fixed",
      fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, -15 / 32, 7 / 16}
    },

  }
)

minetest.register_node("bacon:applewoodchips", {
    description = ("Apple WoodChips"),
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {"bacon_applewoodchips.png"},
    is_ground_content = false,
    groups = {smoker_fuel=1, snappy = 3, flammable = 4, oddly_breakable_by_hand = 2, fall_damage_add_percent = -10},
    sounds = default.node_sound_leaves_defaults(),
    node_box = {
      type = "fixed",
      fixed = {-0.5, -31 / 64, -0.5, 0.5, -15 / 32, 0.5}
    },
    selection_box = {
      type = "fixed",
      fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, -15 / 32, 7 / 16}
    },
  })

--

minetest.register_craft({
    type = "fuel",
    recipe = "bacon:oakwoodchips",
    burntime = 40,
  })

minetest.register_craft({
    type = "fuel",
    recipe = "bacon:applewoodchips",
    burntime = 20,
  })
--

-- Overide oak and apple drop to add woodchips 
--
minetest.override_item("moretrees:oak_trunk",
  {
    drop = {
      max_items = 2,
      items = {
        {items = {"bacon:oakwoodchips"}, rarity = 2 },
        {items = {"moretrees:oak_planks"} }
      }
    },
  })

--

minetest.override_item("default:tree",
  {
    drop = {
      max_items = 2,
      items = {
        {items = {"bacon:oakwoodchips"}, rarity = 2 },
        {items = {"default:wood"} }
      }
    },
  })

