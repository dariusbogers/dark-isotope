local astralite_slurry_recipe = {
    type = "recipe",
    name = "astralite-slurry",
    category = "chemistry",
    enabled = true,
    subgroup = "intermediate-product",
    order = "a[astralite]-e[slurry]",

    ingredients = {
        {type = "item", name = "astralite-asteroid-chunk", amount = 5},
        {type = "item", name = "iron-ore", amount = 50},
        {type = "fluid", name = "sulfuric-acid", amount = 150}
    },

    results = {
        {type = "fluid", name = "astralite-slurry", amount = 500}
    },
    
    crafting_machine_tint = {
      primary = {r = 0.40, g = 0.10, b = 0.60, a = 0.50}, -- #e0190080
      secondary = {r = 0.55, g = 0.20, b = 0.70, a = 0.50}, -- #edc39a80
      tertiary = {r = 0.30, g = 0.05, b = 0.45, a = 0.50}, -- #dea58a80
      quaternary = {r = 0.18, g = 0.02, b = 0.28, a = 0.50}, -- #a02c0080
    },

    energy_required = 20
}

local purified_astralite_recipe = {
    type = "recipe",
    name = "purified-astralite",
    category = "chemistry",
    enabled = true,
    subgroup = "intermediate-product",
    order = "a[astralite]-e[purified]",

    ingredients = {
        {type = "fluid", name = "astralite-slurry", amount = 500},
        {type = "fluid", name = "water", amount = 500},
    },

    results = {
        {type = "fluid", name = "purified-astralite", amount = 100}
    },
    
    crafting_machine_tint = {
      primary = {r = 0.65, g = 0.25, b = 0.95, a = 0.50}, -- #e0190080
      secondary = {r = 0.80, g = 0.45, b = 1.00, a = 0.50}, -- #edc39a80
      tertiary = {r = 0.50, g = 0.12, b = 0.80, a = 0.50}, -- #dea58a80
      quaternary = {r = 0.32, g = 0.05, b = 0.55, a = 0.50}, -- #a02c0080
    },

    energy_required = 20
}

local astralite_crystallization_recipe = {
    type = "recipe",
    name = "crystallized-astralite",
    category = "chemistry",
    subgroup = "intermediate-product",
    order = "z[astralite]-c[crystallized]",
    enabled = true,
    icon = "__dark-isotope__/graphics/icons/astralite-crystal.png",

    crafting_machine_tint = {
      primary = {r = 0.75, g = 0.35, b = 1.00, a = 0.50}, -- #e0190080
      secondary = {r = 0.90, g = 0.60, b = 1.00, a = 0.50}, -- #edc39a80
      tertiary = {r = 0.60, g = 0.20, b = 0.90, a = 0.50}, -- #dea58a80
      quaternary = {r = 0.40, g = 0.08, b = 0.65, a = 0.50}, -- #a02c0080
    },

    ingredients = {
        {type = "fluid", name = "purified-astralite", amount = 100},
        {type = "item", name = "sulfur", amount = 1},
    },

    results = {
        {type = "item", name = "crystallized-astralite", amount = 5},
        {type = "item", name = "sulfur", amount = 1},
    },

    energy_required = 30
}

data:extend({astralite_slurry_recipe, purified_astralite_recipe, astralite_crystallization_recipe})