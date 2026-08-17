-- local machine = table.deepcopy(data.raw["reactor"]["nuclear-reactor"])

-- machine.name= "astralite-generator"

-- machine.icon = "__dark-isotope__/graphics/icons/isotope-347.png"

-- machine.minable = {
--     mining_time = 0.5,
--     result = "astralite-generator"
-- }

-- machine.max_health = 1000

-- machine.collision_box = {{-3.3, -3.3}, {3.3, 3.3}}
-- machine.selection_box = {{-3.5, -3.5}, {3.5, 3.5}}

-- machine.graphics_set = {
--     animation = {
--         layers = {
--             {
--                 filename = "__dark-isotope__/graphics/entity/new-machine/dummy.png",
--                 width = 512,
--                 height = 512,
--                 scale = 1
--             }
--         }
--     }
-- }

-- machine.picture = {
--                 filename = "__dark-isotope__/graphics/entity/new-machine/dummy5.png",
--                 width = 512,
--                 height = 512,
--                 scale = 0.5
-- }

-- machine.working_light_picture = nil
-- machine.light = nil

-- data:extend({
--     machine
-- })

local isotopic_generator = {
    type = "burner-generator",
    name = "isotopic-generator",

    icon = "__dark-isotope__/graphics/icons/isotopic-generator.png",

    minable = {
        mining_time = 0.5,
        result = "isotopic-generator"
    },

    max_health = 1000,
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},

    -- fuel input
    burner = {
        type = "burner",
        fuel_inventory_size = 1,
        fuel_categories = {"isotope-fuel"}
    },

    energy_source = {
        type = "electric",
        usage_priority = "secondary-output"
    },

    max_power_output = "250MW",

    idle_animation = {
        layers = {
            {
                filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-colour.png",
                width = 512,
                height = 512,
                repeat_count = 32,
                scale = 0.5
            }
        }
    },

    animation = {
        layers = {
            {
                filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-colour.png",
                width = 512,
                height = 512,
                repeat_count = 32,
                scale = 0.5
            },
            {
                filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-lights.png",
                width = 512,
                height = 512,

                frame_count = 32,
                line_length = 4,
                animation_speed = 0.5,
                blend_mode = "additive",
                draw_as_glow = true,
                tint = {0.80, 0.30, 1.0, 1},

                scale = 0.5
            }
        }
    },
    -- pictures = {
    --     north = {
    --         layers = {
    --             filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-colour.png",
    --             width = 512,
    --             height = 512,
    --             scale = 0.5
    --         }
    --     },
    --     south = {
    --         layers = {
    --             filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-colour.png",
    --             width = 512,
    --             height = 512,
    --             scale = 0.5
    --         }
    --     },
    --     east = {
    --         layers = {
    --             filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-colour.png",
    --             width = 512,
    --             height = 512,
    --             scale = 0.5
    --         }
    --     },
    --     west = {
    --         layers = {
    --             filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-colour.png",
    --             width = 512,
    --             height = 512,
    --             scale = 0.5
    --         }
    --     }
    -- },

    -- graphics_set = {
    --     animation = {
    --         layers = {
    --             {
    --                 filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-colour.png",
    --                 width = 512,
    --                 height = 512,
    --                 scale = 0.5
    --             },
    --             {
    --                 filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-lights.png",
    --                 width = 512,
    --                 height = 512,
    --                 frame_count = 32,
    --                 line_length = 4,
    --                 animation_speed = 0.5,
    --                 blend_mode = "additive",
    --                 draw_as_glow = true,
    --                 tint = {0.80, 0.30, 1.0, 1},
    --                 scale = 0.5

    --             }
    --         }
    --     },
    --     idle_animation = {
    --         layers = {
    --             {
    --                 filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-colour.png",
    --                 width = 512,
    --                 height = 512,
    --                 scale = 0.5
    --             }
    --         }
    --     }
    -- -- },
    -- rotate = false,
    -- orientation_to_variation = false,

    -- vertical_animation = {
    --     layers = {
    --         {
    --             filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-colour.png",
    --             width = 512,
    --             height = 512,
    --             repeat_count = 32,
    --             scale = 0.5
    --         },
    --         {
    --             filename = "__dark-isotope__/graphics/entity/isotopic-generator/isotopic-generator-lights.png",
    --             width = 512,
    --             height = 512,
    --             frame_count = 32,
    --             line_length = 4,
    --             animation_speed = 0.5,
    --             blend_mode = "additive",
    --             draw_as_glow = true,
    --             tint = {0.80, 0.30, 1.0, 1},
    --             scale = 0.5

    --         }
    --     }
    -- }
}

data:extend({isotopic_generator})