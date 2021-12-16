

function text(content)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    AddTextComponentString(content .. MPH) -- If You Change to kph Change mph to kph
    DrawText(0.84,0.7)
end

Citizen.CreateThread(function()
    
    while true do
        Citizen.wait(1)
        local speed = (GetEntitySpeed(GetVehiclePedIsIn(-1), false))*2.2369  -- Go To Read ME
        if(PedIsInAnyVehicle(GetPlayerPed(-1), false)) then
            text(math.floor(speed))
        end
    end
end)
