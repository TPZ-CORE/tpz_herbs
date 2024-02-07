while true do
        Citizen.Wait(0)

        local size = GetNumberOfEvents(0)

        if size > 0 then

            for index = 0, size - 1 do
                local event = GetEventAtIndex(0, index)
	        if event == joaat("EVENT_LOOT_COMPLETE") then   -- if eventAtIndex == GetHashKey("EVENT_LOOT_COMPLETE")

					local view = exports["tpz_herbs"]:DataViewNativeGetEventData(0, index, 3)
                    
                
                    local lootedEntityId         = view['1']
                    local isLootSuccess         = view['2']

                    
														end
        end
   end

end)
