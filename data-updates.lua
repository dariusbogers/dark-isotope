-- Astralite asteroid spawn definitions
local asteroid_util = require("__dark-isotope__.prototypes.planet.astralite-spawn-definitions")

-- Planets

local planet_spawn_definitions = {
    ["nauvis"] = asteroid_util.spawn_definitions(
        asteroid_util.nauvis_vulcanus,
        0.1
    ),

    ["vulcanus"] = asteroid_util.spawn_definitions(
        asteroid_util.nauvis_vulcanus,
        0.9
    ),

    ["gleba"] = asteroid_util.spawn_definitions(
        asteroid_util.nauvis_gleba,
        0.9
    ),

    ["fulgora"] = asteroid_util.spawn_definitions(
        asteroid_util.nauvis_fulgora,
        0.9
    ),

    ["aquilo"] = asteroid_util.spawn_definitions(
        asteroid_util.fulgora_aquilo,
        0.9
    ),

    ["cerys"] = asteroid_util.spawn_definitions(
        asteroid_util.fulgora_cerys,
        0.9
    ),

    ["muluna"] = asteroid_util.spawn_definitions(
        asteroid_util.nauvis_muluna,
        0.9
    ),

    ["maraxsis"] = asteroid_util.spawn_definitions(
        asteroid_util.vulcanus_maraxsis,
        0.9
    )
}

for planet_name, definitions in pairs(planet_spawn_definitions) do
    local planet = data.raw.planet[planet_name]

    if planet then
        planet.asteroid_spawn_definitions = planet.asteroid_spawn_definitions or {}

        for _, definition in pairs(definitions) do
            table.insert(planet.asteroid_spawn_definitions, definition)
        end
    end
end

local connection_spawn_definitions = {
    ["nauvis-vulcanus"] = asteroid_util.nauvis_vulcanus,
    ["nauvis-gleba"] = asteroid_util.nauvis_gleba,
    ["nauvis-fulgora"] = asteroid_util.nauvis_fulgora,

    ["vulcanus-gleba"] = asteroid_util.vulcanus_gleba,
    ["gleba-fulgora"] = asteroid_util.gleba_fulgora,

    ["gleba-aquilo"] = asteroid_util.gleba_aquilo,
    ["fulgora-aquilo"] = asteroid_util.fulgora_aquilo,

    ["aquilo-solar-system-edge"] = asteroid_util.aquilo_solar_system_edge,

    ["solar-system-edge-shattered-planet"] = asteroid_util.shattered_planet_trip,

    ["fulgora-cerys"] = asteroid_util.fulgora_cerys,

    ["nauvis-muluna"] = asteroid_util.nauvis_muluna,

    ["vulcanus-maraxsis"] = asteroid_util.vulcanus_maraxsis,
    ["fulgora-maraxsis"] = asteroid_util.fulgora_maraxsis
}

for connection_name, spawn_definition in pairs(connection_spawn_definitions) do
    local connection = data.raw["space-connection"][connection_name]

    if connection then
        connection.asteroid_spawn_definitions = connection.asteroid_spawn_definitions or {}

        local definitions = asteroid_util.spawn_definitions(spawn_definition)

        for _, definition in pairs(definitions) do
            table.insert(connection.asteroid_spawn_definitions, definition)
        end
    end
end

local location_spawn_definitions = {
    ["solar-system-edge"] = asteroid_util.aquilo_solar_system_edge,
    ["shattered-planet"] = asteroid_util.shattered_planet_trip
}

-- for location_name, spawn_definition in pairs(location_spawn_definitions) do
--     local location = data.raw["space-location"][location_name]

--     if location then
--         location.asteroid_spawn_definitions = location.asteroid_spawn_definitions or {}

--         local definitions = asteroid_util.spawn_definitions(spawn_definition, 0.9)

--         for _, definition in pairs(definitions) do
--             table.insert(location.asteroid_spawn_definitions, definition)
--         end
--     end
-- end