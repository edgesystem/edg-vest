Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        -- Loop para armário de Job
        for _, loc in ipairs(Config.JobOutfits) do
            local distance = #(playerCoords - vector3(loc.x, loc.y, loc.z))
            if distance < 20 then
                DrawMarker(2, loc.x, loc.y, loc.z - 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 0, 0, 100, false, true, 2, nil, nil, false)
                if distance < 1.5 then
                    DisplayHelpText("Aperte ~INPUT_CONTEXT~ para abrir o vestuário")
                    if IsControlJustPressed(1, 38) then  -- 38 é a tecla E
                        ExecuteCommand('joboutfits')
                    end
                end
            end
        end

        -- Loop para armário de Gang
        for _, loc in ipairs(Config.GangOutfits) do
            local distance = #(playerCoords - vector3(loc.x, loc.y, loc.z))
            if distance < 20 then
                DrawMarker(2, loc.x, loc.y, loc.z - 1.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 0, 255, 100, false, true, 2, nil, nil, false)
                if distance < 1.5 then
                    DisplayHelpText("Pressione ~INPUT_CONTEXT~ para abrir o vestuário")
                    if IsControlJustPressed(1, 38) then  -- 38 é a tecla E
                        ExecuteCommand('gangoutfits')
                    end
                end
            end
        end

        Citizen.Wait(0)
    end
end)

-- Função para exibir texto de ajuda na tela
function DisplayHelpText(text)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

print("✅ KIT 155 FREE Script carregado! Obrigado por usar meu script - Thug Developer - Edge System --> https://discord.gg/PetxZ3yXjZ")
