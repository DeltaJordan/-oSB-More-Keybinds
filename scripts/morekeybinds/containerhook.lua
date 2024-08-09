function update(dt)
    sb.logInfo(tostring(input))
    if input then
        if input.bindUp("osb_more_keybinds", "takeAll") then
            world.containerTakeAll(pane.containerEntityId())
        end
    end
end
