local isotope_347_processing = {
    type = "technology",
    name = "isotope-347-processing",

    icon = "__dark-isotope__/graphics/technology/isotopic-technology.png",
    icon_size = 256,

    prerequisites = {
        "advanced-oil-processing",
        "nuclear-power",
        "space-science-pack"
    },

    effects = {
        {
            type = "unlock-recipe",
            recipe = "astralite-slurry"
        },
        {
            type = "unlock-recipe",
            recipe = "purified-astralite"
        },
        {
            type = "unlock-recipe",
            recipe = "crystallized-astralite"
        },
        {
            type = "unlock-recipe",
            recipe = "isotope-347"
        },
        {
            type = "unlock-recipe",
            recipe = "isotope-347-fuel"
        },
        {
            type = "unlock-recipe",
            recipe = "347-fuel-cell"
        },
        {
            type = "unlock-recipe",
            recipe = "isotopic-generator"
        },
    },

    unit = {
        count = 1000,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        time = 60
    }
}

data:extend({
    isotope_347_processing
})