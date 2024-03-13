-- Ali Nazarzade - © 2024
--@ All rights reserved. (c) 2022

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0) 

		SetCreateRandomCops(false) -- Stop To Spawn Random Cops Driving with Car And Walking Around
		SetCreateRandomCopsNotOnScenarios(false) -- Stop To Spawn Random Cops ( Scenario )
		SetCreateRandomCopsOnScenarios(false) -- Stop To Spawn Random Cops

		SetVehicleDensityMultiplierThisFrame(0.0) -- Set Traffic Density To "0"
		SetPedDensityMultiplierThisFrame(0.0) -- Set NPC & Peds Density To "0"

		SetRandomVehicleDensityMultiplierThisFrame(0.0) -- Set Vehicles Car Scenarios To "0"
		SetParkedVehicleDensityMultiplierThisFrame(0.0) -- Set Parked Vehicles To "0"
		SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0) -- Set Random NPC & Peds To "0"
		
		SetGarbageTrucks(false) -- Stop To Spawn trucks
		SetRandomBoats(false) -- Stop To Spawn boat

		
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
		RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
	end
end)