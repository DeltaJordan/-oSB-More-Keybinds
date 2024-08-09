local cfgs = assets.byExtension("config")
for k, v in pairs(cfgs) do
    assets.patch(v, "/scripts/morekeybinds/containerhook.patch.lua")
end
