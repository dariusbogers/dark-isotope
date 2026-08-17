local astralite_slurry_recipe = {
    type = "recipe",
    name = "astralite-slurry",
    category = "chemistry",
    enabled = false,
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
      primary = {r = 0.40, g = 0.10, b = 0.60, a = 0.50},
      secondary = {r = 0.55, g = 0.20, b = 0.70, a = 0.50},
      tertiary = {r = 0.30, g = 0.05, b = 0.45, a = 0.50},
      quaternary = {r = 0.18, g = 0.02, b = 0.28, a = 0.50},
    },

    energy_required = 20
}

local purified_astralite_recipe = {
    type = "recipe",
    name = "purified-astralite",
    category = "chemistry",
    enabled = false,
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
      primary = {r = 0.65, g = 0.25, b = 0.95, a = 0.50},
      secondary = {r = 0.80, g = 0.45, b = 1.00, a = 0.50},
      tertiary = {r = 0.50, g = 0.12, b = 0.80, a = 0.50},
      quaternary = {r = 0.32, g = 0.05, b = 0.55, a = 0.50},
    },

    energy_required = 20
}

local astralite_crystallization_recipe = {
    type = "recipe",
    name = "crystallized-astralite",
    category = "chemistry",
    subgroup = "intermediate-product",
    order = "z[astralite]-c[crystallized]",
    enabled = false,
    icon = "__dark-isotope__/graphics/icons/astralite-crystal.png",

    crafting_machine_tint = {
      primary = {r = 0.75, g = 0.35, b = 1.00, a = 0.50},
      secondary = {r = 0.90, g = 0.60, b = 1.00, a = 0.50},
      tertiary = {r = 0.60, g = 0.20, b = 0.90, a = 0.50},
      quaternary = {r = 0.40, g = 0.08, b = 0.65, a = 0.50},
    },

    ingredients = {
        {type = "fluid", name = "purified-astralite", amount = 100},
        {type = "item", name = "sulfur", amount = 1},
    },

    results = {
        {type = "item", name = "crystallized-astralite", amount = 10},
        {type = "item", name = "sulfur", amount = 1},
    },

    energy_required = 30
}

local isotope_347_recipe = {
    type = "recipe",
    name = "isotope-347",
    category = "centrifuging",
    subgroup = "intermediate-product",
    order = "z[astralite]-d[isotope-347]",
    enabled = false,

    crafting_machine_tint = {
      primary = {r = 0.90, g = 0.235, b = 1.0, a = 1.0},
      secondary = {r = 0.282, g = 0.071, b = 0.408, a = 1.0},
      tertiary = {r = 0.290, g = 0.086, b = 0.341, a = 1.0},
      quaternary = {r = 0.161, g = 0.020, b = 0.196, a = 1.0},
    },

    ingredients = {
        {type = "item", name = "crystallized-astralite", amount = 5},
        {type = "item", name = "uranium-235", amount = 1},
        {type = "item", name = "uranium-238", amount = 5}
    },

    results = {
        {type = "item", name = "isotope-347", amount = 2}
    },

    energy_required = 60
}


local isotope_347_fuel = {
    type = "recipe",
    name = "isotope-347-fuel",
    enabled = false,

    category = "chemistry",

    ingredients = {
        {type = "item", name = "isotope-347", amount = 10},
        {type = "fluid", name = "heavy-oil", amount = 50}
    },

    results = {
        {type = "fluid", name = "isotope-347-fuel", amount = 500}
    },

    energy_required = 5
}

local iso_347_fuel_cell = {
    type = "recipe",
    name = "347-fuel-cell",
    enabled = false,

    category = "crafting-with-fluid",

    ingredients = {
        {type = "fluid", name = "isotope-347-fuel", amount = 50},
        {type = "item", name = "low-density-structure", amount = 1}
    },

    results = {
        {type = "item", name = "347-fuel-cell", amount = 10}
    },

    energy_required = 10
}

local isotopic_generator_recipe = {
    type = "recipe",
    name = "isotopic-generator",

    category = "crafting",

    enabled = false,

    ingredients = {
        {type = "item" , name = "steel-plane", amount = 200},
        {type = "item" , name = "concrete", amount = 500},
        {type = "item" , name = "advanced-circuit", amount = 100},
        {type = "item" , name = "processing-unit", amount = 100},
        {type = "item" , name = "low-density-structure", amount = 100},
        {type = "item" , name = "heat-exchanger", amount = 40},
        {type = "item" , name = "crystallized-astralite", amount = 0}
    }
}

data:extend({
    astralite_slurry_recipe,
    purified_astralite_recipe,
    astralite_crystallization_recipe,
    isotope_347_recipe,
    isotope_347_fuel,
    iso_347_fuel_cell
})