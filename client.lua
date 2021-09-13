--[[ Declarando uma Thread (bloco de código que é executado uma única vez) ]]
Citizen.CreateThread(function()

    --[[ Criação de uma repetição infinita ]]
    while true do
        --[[ Aqui estamos pegando a entidade do nosso player ]]
        local ped = PlayerPedId()

        local ped_vida = GetEntityHealth(ped) --[[ Consultando a vida da entidade ]]
        local ped_colete = GetPedArmour(ped) --[[ Consultando a colete do player ]]

        --[[ Aqui estamos enviando a vida e o colete do player para o arquivo nui.js ]]
        SendNUIMessage({vida = ped_vida, colete = ped_colete})

        --[[ Pausa de 100 milissegundos a cada repetição ]]
        Citizen.Wait(100)
    end
end)

