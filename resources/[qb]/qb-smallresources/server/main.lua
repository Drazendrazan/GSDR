local QBCore = exports['qb-core']:GetCoreObject()
local VehicleNitrous = {}

RegisterNetEvent('tackle:server:TacklePlayer', function(playerId)
    TriggerClientEvent("tackle:client:GetTackled", playerId)
end)

QBCore.Functions.CreateCallback('nos:GetNosLoadedVehs', function(_, cb)
    cb(VehicleNitrous)
end)

QBCore.Commands.Add("id", "Check Your ID #", {}, false, function(source)
    TriggerClientEvent('QBCore:Notify', source,  "ID: "..source)
end)

QBCore.Functions.CreateUseableItem("harness", function(source, item)
    TriggerClientEvent('seatbelt:client:UseHarness', source, item)
end)

RegisterNetEvent('equip:harness', function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then return end

    if not Player.PlayerData.items[item.slot].info.uses then
        Player.PlayerData.items[item.slot].info.uses = 19
        Player.Functions.SetInventory(Player.PlayerData.items)
    elseif Player.PlayerData.items[item.slot].info.uses == 1 then
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items['harness'], "remove")
        Player.Functions.RemoveItem('harness', 1)
    else
        Player.PlayerData.items[item.slot].info.uses -= 1
        Player.Functions.SetInventory(Player.PlayerData.items)
    end
end)

RegisterNetEvent('seatbelt:DoHarnessDamage', function(hp, data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then return end

    if hp == 0 then
        Player.Functions.RemoveItem('harness', 1, data.slot)
    else
        Player.PlayerData.items[data.slot].info.uses -= 1
        Player.Functions.SetInventory(Player.PlayerData.items)
    end
end)

RegisterNetEvent('qb-carwash:server:washCar', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then return end

    if Player.Functions.RemoveMoney('cash', Config.DefaultPrice, "car-washed") then
        TriggerClientEvent('qb-carwash:client:washCar', src)
    elseif Player.Functions.RemoveMoney('bank', Config.DefaultPrice, "car-washed") then
        TriggerClientEvent('qb-carwash:client:washCar', src)
    else
        TriggerClientEvent('QBCore:Notify', src, 'You dont have enough money..', 'error')
    end
end)

QBCore.Functions.CreateCallback('smallresources:server:GetCurrentPlayers', function(_, cb)
    local TotalPlayers = 0
    local players = QBCore.Functions.GetPlayers()
    for _ in pairs(players) do
        TotalPlayers += 1
    end
    cb(TotalPlayers)
end)

function LightDrunkEffect()
    local player = PlayerPedId()
    Wait(3000)
    DoScreenFadeOut(1000)
    Wait(1000)
    SetTimecycleModifier('spectator5')
    SetPedMotionBlur(PlayerPedId(), true)
    SetPedMovementClipset(PlayerPedId(), 'MOVE_M@DRUNK@SLIGHTLYDRUNK', true)
    SetPedIsDrunk(PlayerPedId(), true)
    SetPedAccuracy(PlayerPedId(), 0)
    DoScreenFadeIn(1000)
    if IsPedRunning(player) then
        SetPedToRagdoll(player, math.random(1000, 2000), math.random(1000, 2000), 3, 0, 0, 0)
    end
    Wait(2000)
    if (60 >= math.random(1,100)) and IsPedRunning(player) then
        SetPedToRagdollWithFall(ped, 2500, 4000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end            
    Wait(5*60000) -- 5 mins
    if IsPedRunning(player) then
        SetPedToRagdoll(player, math.random(1000, 2000), math.random(1000, 2000), 3, 0, 0, 0)
    end
    Wait(2000)
    if (30 >= math.random(1,100)) and IsPedRunning(player) then
        SetPedToRagdollWithFall(ped, 1500, 3000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end
    DoScreenFadeOut(1000)
    Wait(1000)
    DoScreenFadeIn(1000)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(PlayerPedId(), 0)
    SetPedIsDrunk(PlayerPedId(), false)
    SetPedMotionBlur(PlayerPedId(), false)
end

function HeavyDrunkEffect()
    local ped = PlayerPedId()
    if IsPedWalking(player) or IsPedRunning(player) then
        SetPedToRagdollWithFall(ped, 2500, 4000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end
    Wait(5000)
    DoScreenFadeOut(1500)
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('LARGE_EXPLOSION_SHAKE', 1.00)
    Wait(2000)
    SetTimecycleModifier('spectator5')
    SetPedMotionBlur(PlayerPedId(), true)
    SetPedMovementClipset(PlayerPedId(), 'MOVE_M@DRUNK@VERYDRUNK', true)
    SetPedIsDrunk(PlayerPedId(), true)
    SetPedAccuracy(PlayerPedId(), 0)
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('DRUNK_SHAKE', 1.10)
    Wait(2000)
    DoScreenFadeIn(1800)
    if IsPedWalking(player) or IsPedRunning(player) then
        SetPedToRagdollWithFall(ped, 2500, 4000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 1.20)
    Wait(2000)            
    Wait(10*60000) -- 10 mins
    DoScreenFadeOut(1400)
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('DRUNK_SHAKE', 1.10)
    Wait(2000)  
    DoScreenFadeIn(1200)
    if IsPedWalking(player) or IsPedRunning(player) then
        SetPedToRagdollWithFall(ped, 2500, 4000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 1.05)
    Wait(1000)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(PlayerPedId(), 0)
    SetPedIsDrunk(PlayerPedId(), false)
    SetPedMotionBlur(PlayerPedId(), false)
end