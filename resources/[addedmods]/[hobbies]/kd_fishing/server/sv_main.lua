local QBCore = exports['qb-core']:GetCoreObject()
local Team = {}
local Avible = {}
local isStart = false

local function giveAward()
    table.sort(Team, function(a, b)
        return a.point > b.point
    end)
    for k, v in pairs(Team) do
        if k == 1 then
            exports["rep-tablet"]:GroupEvent(v.team, "kd_fishing:client:giveAward", {1})
        elseif k == 2 then
            exports["rep-tablet"]:GroupEvent(v.team, "kd_fishing:client:giveAward", {2})
        elseif k == 3 then
            exports["rep-tablet"]:GroupEvent(v.team, "kd_fishing:client:giveAward", {3})
        end
    end
end

RegisterNetEvent('kd_fishing:server:stage1', function()
    local src = source
    local group = exports['rep-tablet']:getGroupByMembers(src)
    local mem = exports["rep-tablet"]:getGroupSize(group)
    if mem > 4 then
        TriggerClientEvent('rep-tablet:client:notReady', src)
        TriggerClientEvent('QBCore:Notify', src, "Your group is too large, the maximum number is only 4", "error", 5000)
    else
        local jobStatus = {
            {name = "Find the current fishing spot", isDone = false, id = 1},
            {name = "Test the water", isDone = false, id = 2,max = Config.Amount, count = 0},
            {name = "Let them know the spot is good", isDone = false, id = 3},
        }
        exports["rep-tablet"]:setJobStatus(group, jobStatus)
        exports["rep-tablet"]:pNotifyGroup(group, "CURRENT", "Find the current fishing spot", "fas fa-car", "#59c5f7", "NONE")
        exports["rep-tablet"]:GroupEvent(group, "kd_fishing:client:gps")
        TriggerClientEvent('kd_fishing:client:stage1', src)
    end
end)

RegisterNetEvent('kd_fishing:server:stage2', function(total)
    local src = source
    local group = exports['rep-tablet']:getGroupByMembers(src)
    if total < Config.Amount then
        local jobStatus = {
            {name = "Find the current fishing spot", isDone = true, id = 1},
            {name = "Test the water", isDone = false, id = 2, max = Config.Amount, count = total},
            {name = "Let them know the spot is good", isDone = false, id = 3},
        }
        exports["rep-tablet"]:setJobStatus(group, jobStatus)
        exports["rep-tablet"]:pNotifyGroup(group, "CURRENT", string.format("%s/%s Test the water", total, Config.Amount), "fas fa-fish", "#59c5f7", "NONE")
        exports["rep-tablet"]:GroupEvent(group, "kd_fishing:client:syncTotal", {total})
    elseif total == Config.Amount then
        exports['rep-tablet']:resetJobStatus(group)
        exports["rep-tablet"]:GroupEvent(group, "rep-tablet:client:RefreshGroupsApp", {group})
        exports["rep-tablet"]:pNotifyGroup(group, "CURRENT", "Let them know the spot is good", "fas fa-fish", "#59c5f7", "NONE")
    end
end)

RegisterNetEvent('kd_fishing:server:earn', function (name, point)
    local src = source
    local group = exports['rep-tablet']:getGroupByMembers(src)
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(name, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[name], 'add', 1)
    if isStart then
        for k, v in pairs(Team) do
            if v.team == group then
                Team[k].point += point
            end
        end
    end
end)

RegisterNetEvent('kd_fishing:server:earnTrash', function (name)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(name, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[name], 'add', 1)
end)

RegisterNetEvent('kd_fishing:server:joinTournaments', function (name, point)
    local src = source
    local group = exports['rep-tablet']:getGroupByMembers(src)
    if group then
        if isStart then
            if not Avible[group] then
                Team[#Team+1] = {team = group, point = 0}
                Avible[group] = true
                TriggerClientEvent('QBCore:Notify', src, "Your team has registered successfully.", "primary", 5000)
            end
        else
            local t = Config.Cron
            local remaining = checktime({t})
            local hours = math.floor(remaining / 3600)
            local minutes = math.floor((remaining % 3600) / 60)
            local seconds = remaining % 60
            TriggerClientEvent('QBCore:Notify', src, string.format("Tournament Start In %s hourr(s), %s minute(s), %s second(s)", hours, minutes, seconds), "primary", 5000)
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "Please find a team to play with", "error", 5000)
    end
end)

RegisterNetEvent('kd_fishing:server:pay', function (amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if amount > 0 then
        local payCheck = amount * Config.Price
        Player.Functions.AddMoney('cash', payCheck)
        TriggerClientEvent('QBCore:Notify', src, string.format("$%s transferred from your paycheck", payCheck), "success", 5000)
    end
end)

RegisterNetEvent('kd_fishing:server:giveAward', function (ranking)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if ranking ==1 then
        Player.Functions.AddMoney('cash', 10000)
    elseif ranking ==2 then
        Player.Functions.AddMoney('cash', 5000)
    elseif ranking ==3 then
        Player.Functions.AddMoney('cash', 2000)
    end
end)

QBCore.Functions.CreateCallback("kd_fishing:callback:getTeam", function(source, cb)
    if isStart then
        cb(Team)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateUseableItem("fishing-rod",function(source)
    TriggerClientEvent('kd_fishing:client:useRod', source)
end)

CreateThread(function ()
    local t = Config.Cron
    t.callback = function()
        isStart = true
        Team = {}
        Avible = {}
        SetTimeout(Config.Time  * 1000, function()
            isStart = false
            giveAward()
        end)
    end
    cron({t}, true)
end)