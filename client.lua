

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local size = GetNumberOfEvents(0)   -- get number of events for EVENT GROUP 0 (SCRIPT_EVENT_QUEUE_AI). Check table below.
		if size > 0 then
			for i = 0, size - 1 do

				local eventAtIndex = GetEventAtIndex(0, i)

				if eventAtIndex == joaat("EVENT_LOOT_COMPLETE") then   -- if eventAtIndex == GetHashKey("EVENT_LOOT_COMPLETE")

					local eventDataSize = 3 -- for EVENT_LOOT_COMPLETE data size is 3. Check table below.

					local eventDataStruct = DataView.ArrayBuffer(128) -- buffer must be 8*eventDataSize or bigger
					eventDataStruct:SetInt32(0 ,0)		 	-- 8*0 offset for 0 element of eventData
					eventDataStruct:SetInt32(8 ,0)    	  	-- 8*1 offset for 1 element of eventData
					eventDataStruct:SetInt32(16 ,0)			-- 8*2 offset for 2 element of eventData

					local is_data_exists = Citizen.InvokeNative(0x57EC5FA4D4D6AFCA,0,i,eventDataStruct:Buffer(),eventDataSize)	-- GET_EVENT_DATA

					if is_data_exists then
						print("0: looterId: "..eventDataStruct:GetInt32(0))
						print("1: lootedEntityId: "..eventDataStruct:GetInt32(8))
						print("2: isLootSuccess: "..eventDataStruct:GetInt32(16))
														end
        end
   end

end)
      
