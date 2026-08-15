local uranium_recipes = {
    "uranium-processing",
    "kovarex-enrichment-process",
    "nuclear-fuel",
    "nuclear-fuel-reprocessing"
}

for _, recipe_name in pairs(uranium_recipes) do
    local recipe = data.raw.recipe[recipe_name]

    if recipe then
        recipe.crafting_machine_tint = {
            primary = {r = 0.0, g = 1.0, b = 0.0, a = 1.0},
            secondary = {r = 0.0, g = 1.0, b = 0.0, a = 1.0},
            tertiary = {r = 0.0, g = 1.0, b = 0.0, a = 1.0},
            quaternary = {r = 0.0, g = 1.0, b = 0.0, a = 1.0},
        }
    end
end