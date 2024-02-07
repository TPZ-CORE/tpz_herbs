Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local size = GetNumberOfEvents(0)   -- get number of events for EVENT GROUP 0 (SCRIPT_EVENT_QUEUE_AI). Check table below.
		if size > 0 then
			for i = 0, size - 1 do

				local eventAtIndex = GetEventAtIndex(0, i)

				if eventAtIndex == joaat("EVENT_LOOT_COMPLETE") then   -- if eventAtIndex == GetHashKey("EVENT_LOOT_COMPLETE")

					local view = exports["tpz_herbs"]:DataViewNativeGetEventData(0, index, 3)
                    
                
                    local lootedEntityId         = view['1']
                    local isLootSuccess         = view['2']

                    
														end
        end
   end

end)
