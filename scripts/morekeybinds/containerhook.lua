local takeAll = function()
    local containerEntityId = pane.containerEntityId()
    if not containerEntityId then
        return
    end

    local containerItems = world.containerItems(containerEntityId)
    if not containerItems then
        return
    end

    if not player then
        return
    end

    for slot, item in pairs(containerItems) do
        -- Always returns nil, not useful for checking if it worked.
        local itemConsumed = world.containerConsumeAt(containerEntityId, slot - 1, item.count)
        player.giveItem(item)
    end
end

function update(dt)
    if input then
        -- Use bindHeld until pane input bugs are fixed.
        if input.bindHeld("osb_more_keybinds", "takeAll") then
            takeAll()
        end
    end
end
