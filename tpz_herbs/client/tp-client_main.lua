while true do
        Citizen.Wait(0)

        local size = GetNumberOfEvents(0)

        if size > 0 then

            for index = 0, size - 1 do
                local event = GetEventAtIndex(0, index)
	        if event == joaat("EVENT_LOOT_COMPLETE") then   -- if eventAtIndex == GetHashKey("EVENT_LOOT_COMPLETE")

		    local view = exports["tpz_herbs"]:DataViewNativeGetEventData(0, index, 3)
                    
                    local looterId       = view['0']
                    local lootedEntityId = view['1']
                    local isLootSuccess  = view['2']

                    -- Ensure the player who enacted on the event is the one who must get the rewards
                    if isLootSuccess and PlayerPedId() == looterId then 
                       local model = GetEntityModel(lootedEntityId)
                       print(model) -- check for lootable herbs if equals to the model to give rewards
                    end
                end
	     end
         end

end)
