AddEventHandler('playerSpawned', function()
	
	-- get player's Ped ID
	local playerPed = PlayerPedId()
	print(playerPed)
	DisplayRadar(false)

	--create 'engine' command
	RegisterCommand('engine', function()
		local vehicle = GetVehiclePedIsUsing(playerPed, false)
		if vehicle ~= 0 then
			
			-- toggle engine based on current state
			SetVehicleEngineOn(vehicle, not GetIsVehicleEngineRunning(vehicle), false, true)
				
			
		end
	end , false)
	
	--default engine toggle to L key
	RegisterKeyMapping('engine', 'engine on/off', 'keyboard', 'l')
end)