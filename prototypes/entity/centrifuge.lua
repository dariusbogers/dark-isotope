local centrifuge = table.deepcopy(data.raw["assembling-machine"]["centrifuge"])

centrifuge.name = "centrifuge"

centrifuge.graphics_set.working_visualisations = {
    {
        apply_recipe_tint = "primary",
        fadeout = true,

        animation = {
            layers = {
                {
                    filename = "__dark-isotope__/graphics/entity/centrifuge/centrifuge-C-light.png",
                    priority = "high",
                    scale = 0.5,
                    blend_mode = "additive",
                    line_length = 8,
                    width = 190,
                    height = 207,
                    frame_count = 64,
                    draw_as_glow = true,
                    shift = util.by_pixel(0, -27.25)
                },
                {
                    filename = "__dark-isotope__/graphics/entity/centrifuge/centrifuge-B-light.png",
                    priority = "high",
                    scale = 0.5,
                    blend_mode = "additive",
                    line_length = 8,
                    width = 131,
                    height = 206,
                    frame_count = 64,
                    draw_as_glow = true,
                    shift = util.by_pixel(16.75, -0.5)
                },

                {
                    filename = "__dark-isotope__/graphics/entity/centrifuge/centrifuge-A-light.png",
                    priority = "high",
                    scale = 0.5,
                    blend_mode = "additive",
                    line_length = 8,
                    width = 108,
                    height = 197,
                    frame_count = 64,
                    draw_as_glow = true,
                    shift = util.by_pixel(-23.5, -1.75)
                }
            }
        }
    }
}

data:extend({centrifuge})