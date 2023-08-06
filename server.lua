
local QBCore = exports['qb-core']:GetCoreObject()

-- KENEVIR SATMA

RegisterNetEvent("aendir-weed:kenevirsat")
AddEventHandler("aendir-weed:kenevirsat", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    
    if xPlayer.Functions.GetItemByName("weed_islenmis").amount >= 1 then
        xPlayer.Functions.RemoveItem ("weed_islenmis", 1)
        Citizen.Wait(500)
        xPlayer.Functions.AddMoney('bank', 500, "Bank depost") -- banka
    else
        TriggerClientEvent("QBCore:Notify", source, "Üzerinde İşlenmiş Kenevir Yok!", "error")
    end
end)

-- KENEVIR ISLEME

RegisterNetEvent("aendir-weed:kenevirisle")
AddEventHandler("aendir-weed:kenevirisle", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    
    if xPlayer.Functions.GetItemByName("weed").amount >= 1 then
        xPlayer.Functions.RemoveItem ("weed", 1)
        Citizen.Wait(500)
        xPlayer.Functions.AddItem('weed_islenmis', 2) 
    else
        TriggerClientEvent("QBCore:Notify", source, "Üzerinde Kenevir Yok!", "error")
    end
end)

-- KENEVIR TOPLAMA

RegisterNetEvent("aendir-weed:kenevirtopla")
AddEventHandler("aendir-weed:kenevirtopla", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
        xPlayer.Functions.AddItem ("weed", 1)
end)
