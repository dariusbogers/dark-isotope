local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
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

data:extend({astralite_item})


-- local item = table.deepcopy(
--     data.raw.item["metallic-asteroid-chunk"]
-- )

-- item.name = "astralite-asteroid-chunk"

-- item.icon =
--     "__dark-isotope__/graphics/icons/astralite-asteroid-chunk.png"