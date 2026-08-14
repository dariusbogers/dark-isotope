-- local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")
-- local astralite_spawn = require("prototypes.asteroids-spawn-definitions")

-- local function combine_asteroid_definitions(vanilla_definitions)
--     local definitions = table.deepcopy(vanilla_definitions)

--     for _, definition in ipairs(astralite_spawn.spawn_definitions()) do
--         table.insert(definitions, definition)
--     end
--     return definitions
-- end

-- data:extend({
--     {
--         type = "space-connection",
--         name = "nauvis-vulcanus",
--         subgroup = "planet-connections",

--         from = "nauvis",
--         to = "vulcanus",

--         order = "a",
--         length = 15000,

--         asteroid_spawn_definitions = 
--             combine_asteroid_definitions(
--                 asteroid_util.nauvis_vulcanus
--             )
--     }
-- })

-- local connection_names = {
--     "nauvis-vulcanus",
--     "nauvis-gleba",
--     "nauvis-fulgora",

--     "vulcanus-gleba",
--     "gleba-fulgora",

--     "gleba-aquilo",
--     "fulgora-aquilo",

--     "aquilo-solar-system-edge",
--     "solar-system-edge-shattered-planet"
-- }

-- for _, connection_name in ipairs(connection_names) do
--     local original =
--         data.raw["space-connection"][connection_name]

--     if original then
--         local connection = table.deepcopy(original)

--         local definitions = {}

--         for _, definition in ipairs(original.asteroid_spawn_definitions or {}) do
--             table.insert(definitions,definition)
--         end

--         for _, definition in ipairs(astralite_spawn.spawn_definitions()) do
--             table.insert(definitions, definition)
--         end

--         -- local astralite_definitions =
--         --     astralite_spawn.spawn_definitions()

--         -- for _, definition in ipairs(astralite_definitions) do
--         --     table.insert(
--         --         connection.asteroid_spawn_definitions,
--         --         definition
--         --     )
--         -- end

--         connection.asteroid_spawn_definitions = definitions
--         data:extend({connection})
--     end
-- end

local astralite_spawn = require("prototypes.planet.astralite-spawn-definitions")

local connection_names = {
    "nauvis-vulcanus",
    "nauvis-gleba",
    "nauvis-fulgora",

    "vulcanus-gleba",
    "gleba-fulgora",

    "gleba-aquilo",
    "fulgora-aquilo",

    "aquilo-solar-system-edge",
    "solar-system-edge-shattered-planet"
}

local astralite_definitions = astralite_spawn.spawn_definitions()

for _, connection_name in ipairs(connection_names) do
    local connection = data.raw["space-connection"][connection_name]

    if connection then
        if connection.asteroid_spawn_definitions ~= nil then
            for _, definition in ipairs(astralite_definitions) do
                table.insert(connection.asteroid_spawn_definitions, definition)
            end

            log("Dark Isotope: Added Astralite asteroids to " .. connection_name)
        else
            connection.asteroid_spawn_definitions = table.deepcopy(astralite_definitions)
            log("Dark Isotope: Added Astralite asteroids to " .. connection_name)
        end
    end
end