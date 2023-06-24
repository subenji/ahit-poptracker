-- entry point for all lua code of the pack
-- more info on the lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
ENABLE_DEBUG_LOG = true
-- get current variant
local variant = Tracker.ActiveVariantUID
-- check variant info

print("-- Example Tracker --")
print("Loaded variant: ", variant)
if ENABLE_DEBUG_LOG then
    print("Debug logging is enabled!")
end

-- Utility Script for helper functions etc.
ScriptHost:LoadScript("scripts/utils.lua")

-- TODO: Add Logic
-- Logic
ScriptHost:LoadScript("scripts/logic/logic.lua")

-- Custom Items
-- ScriptHost:LoadScript("scripts/custom_items/class.lua")
-- ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlus.lua")
-- ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlusWrapper.lua")

-- Items
Tracker:AddItems("items/items.json")

-- Maps
Tracker:AddMaps("maps/maps.json")
-- Locations
Tracker:AddLocations("locations/locations.json")
-- Tracker:AddLocations("locations/dungeons.json")

-- Layout
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")

-- AutoTracking for Poptracker
-- if PopVersion and PopVersion >= "0.18.0" then
--ScriptHost:LoadScript("scripts/autotracking.lua")
-- end