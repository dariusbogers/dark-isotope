local astralite_slurry = {
    type = "fluid",
    name = "astralite-slurry",
    icon = "__dark-isotope__/graphics/icons/fluid/astralite-slurry.png",
    subgroup = "fluid",

    base_color = {0.25, 0.10, 0.35},
    flow_color = {0.45, 0.20, 0.65},

    default_temperature = 25,
    max_tempature = 100,
    heat_capacity = "1kJ",
    order = "a[fluid]-z[astralite-slurry]",
    auto_barrel = true
}

local purified_astralite = {
    type = "fluid",
    name = "purified-astralite",
    icon = "__dark-isotope__/graphics/icons/fluid/purified-astralite.png",
    subgroup = "fluid",

    base_color = {0.35, 0.15, 0.55},
    flow_color = {0.65, 0.30, 0.85},

    default_temperature = 25,
    max_tempature = 100,
    heat_capacity = "1kJ",
    order = "a[fluid]-z[purified-astralite]",
    auto_barrel = true
}

local isotope_347 = {
    type = "fluid",
    name = "isotope-347-fuel",
    icon = "__dark-isotope__/graphics/icons/fluid/liquid-isotope-347.png",
    subgroup = "fluid",

    base_color = {0.25, 0.10, 0.40},
    flow_color = {0.50, 0.20, 0.65},

    default_temperature = 25,
    max_tempature = 100,
    heat_capacity = "1kJ",
    order = "a[fluid]-z[isotope-347-fuel]",
    auto_barrel = true
}

data:extend {
    astralite_slurry,
    purified_astralite,
    isotope_347
}