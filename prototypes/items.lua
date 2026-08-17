local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_sounds = require("__base__.prototypes.item_sounds")

-- local item_tints = require("__base__.prototypes.item-tints")

local astralite_item = {
    type = "item",
    name = "astralite-asteroid-chunk",
    icon = "__dark-isotope__/graphics/icons/astralite-asteroid-chunk.png",
    subgroup = "space-material",
    order = "a[astralite]-e[chunk]",
    inventory_move_sound = space_age_item_sounds.rock_inventory_move,
    pick_sound = space_age_item_sounds.rock_inventory_pickup,
    drop_sound = space_age_item_sounds.rock_inventory_move,
    stack_size = 5,
    weight = 100 * kg,
    -- random_tint_color = item_tints.iron_rust
}

local astralite_crystal = {
    type = "item",
    name = "crystallized-astralite",
    icon = "__dark-isotope__/graphics/icons/astralite-crystal.png",
    subgroup = "intermediate-product",
    order = "a[astralite]-e[crystallized-astralite]",
    inventory_move_sound = space_age_item_sounds.rock_inventory_move,
    pick_sound = space_age_item_sounds.rock_inventory_pickup,
    drop_sound = space_age_item_sounds.rock_inventory_move,
    stack_size = 100,
    weight = 4
}

local isotope_347 = {
    type = "item",
    name = "isotope-347",
    icon = "__dark-isotope__/graphics/icons/isotope-347.png",
    subgroup = "intermediate-product",
    order = "a[astralite]-e[isotope-347]",
    inventory_move_sound = item_sounds.nuclear_inventory_move,
    pick_sound = item_sounds.nuclear_inventory_pickup,
    drop_sound = item_sounds.nuclear_inventory_move,
    stack_size = 100,
    weight = 50*kg
}

local iso_347_fuel_cell = {
    type = "item",
    name = "347-fuel-cell",
    icon = "__dark-isotope__/graphics/icons/347-fuel-cell.png",
    subgroup = "intermediate-product",
    order = "a[astralite]-e[347-fuel-cell]",
    inventory_move_sound = item_sounds.nuclear_inventory_move,
    pick_sound = item_sounds.nuclear_inventory_pickup,
    drop_sound = item_sounds.nuclear_inventory_move,
    stack_size = 20,
    weight = 50*kg,

    fuel_category = "isotope-fuel",
    fuel_value = "24GJ",
    fuel_emission_multiplier = 2
}

local generator_item = {
    type = "item",
    name = "isotopic-generator",
    icon = "__dark-isotope__/graphics/icons/isotopic-generator.png",

    subgroup = "production-machine",
    order = "z[isotopic-generator]",
    place_result = "isotopic-generator",
    stack_size = 10,
    weight = 1000 * kg
}

data:extend({
    astralite_item,
    astralite_crystal,
    isotope_347,
    iso_347_fuel_cell,
    generator_item
})


-- local item = table.deepcopy(
--     data.raw.item["metallic-asteroid-chunk"]
-- )

-- item.name = "astralite-asteroid-chunk"

-- item.icon =
--     "__dark-isotope__/graphics/icons/astralite-asteroid-chunk.png"