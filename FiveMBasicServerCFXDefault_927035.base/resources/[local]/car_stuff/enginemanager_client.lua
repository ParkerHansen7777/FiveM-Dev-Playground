Citizen.CreateThread(function()
		
		-- get player's Ped ID
		local playerPed = PlayerPedId()
		print(playerPed)
		-- Constant checking if player is in a vehicle or not (every tick oof), temporary, needs to be optimized
		while true do
			
			Wait(0)
			-- Check if player is in vehicle
			local vehicle = GetVehiclePedIsUsing(playerPed, false)
			--print(vehicle)
			
			-- if L key is pressed
			if(IsControlJustReleased(2, 182) and vehicle ~= 0) then
				
				-- toggle engine based on current state
				SetVehicleEngineOn(vehicle, not GetIsVehicleEngineRunning(vehicle), false, true)
				print("toggled")
				
			end
			
		
		end
		
		
end)