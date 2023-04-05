local QBCore = exports['qb-core']:GetCoreObject()
local inZone = false
local Zone = nil
local Blips = nil
local Ped = nil
local signIn = false
local total = 0
local amounts = 0
local fishing = false
local rod = nil
local canFish = false

local function ResetBlips()
    RemoveBlip(Blips)
end

local function SetupBlips()
    Blips = AddBlipForCoord(Config.Boss.coords.x, Config.Boss.coords.y, Config.Boss.coords.z)
    SetBlipSprite(Blips, Config.Boss.sprite)
    SetBlipColour(Blips, Config.Boss.color)
    SetBlipScale(Blips, Config.Boss.scale)
    SetBlipAsShortRange(Blips, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.Boss.name)
    EndTextCommandSetBlipName(Blips)
end

local function cPed()
    QBCore.Functions.LoadModel(Config.Boss.model)
    Ped = CreatePed(0, Config.Boss.model, Config.Boss.coords.x, Config.Boss.coords.y, Config.Boss.coords.z - 1.0, Config.Boss.coords.w, false, false)
    SetPedFleeAttributes(Ped, 0, 0)
    SetPedDiesWhenInjured(Ped, false)
    TaskStartScenarioInPlace(Ped, "WORLD_HUMAN_AA_SMOKE", 0, true)
    SetPedKeepTask(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, true)
    SetEntityInvincible(Ped, true)
    FreezeEntityPosition(Ped, true)
    exports['qb-target']:AddTargetEntity(Ped, {
        options = {
            {
                type = "client",
                action = function(entity)
                    TriggerEvent('kd_fishing:client:signIn')
                end,
                icon = "fas fa-sign-in",
                label = "Sign In",
                canInteract = function()
                    if signIn == true or LocalPlayer.state.nghe then return false end
                    return true
                end,
            },
            {
                type = "client",
                action = function(entity)
                    TriggerEvent('kd_fishing:client:signOut')
                end,
                icon = "fas fa-sign-out",
                label = "Sign Out",
                canInteract = function()
                    if signIn == false then return false end
                    return true
                end,
            },
            {
                action = function(entity)
                    TriggerServerEvent("kd_fishing:server:joinTournaments")
                end,
                icon = "fas fa-fish",
                label = "Join Tournament",
                canInteract = function()
                    if signIn == false then return false end
                    return true
                end,
            },
            {
                action = function(entity)
                    TriggerEvent("kd_fishing:client:joinStat")
                end,
                icon = "fas fa-trophy",
                label = "Tournament Status",
                canInteract = function()
                    if signIn == false then return false end
                    return true
                end,
            },
        },
        distance = 2.0
    })
end

RegisterNetEvent('kd_fishing:client:joinStat', function()
    QBCore.Functions.TriggerCallback('kd_fishing:callback:getTeam', function (result)
        if result then
            table.sort(result, function(a, b)
                return a.point > b.point
            end)
            local menu = {}
            for k, v in pairs(result) do
                menu[#menu+1] = {
                    title = "Team "..v.team,
                    icon = "fas fa-users",
                    description = "Points: "..v.point,
                    disabled = true
                }
            end
            lib.registerContext({
                id = 'kd_fishing:client:joinStat',
                icon = "fas fa-trophy",
                title = "Tournament Status",
                options = menu
            })
            lib.showContext('kd_fishing:client:joinStat')
        else
            QBCore.Functions.Notify("Don't seem like there is active tournament", "error", 5000)
        end
    end)
end)

local function onEnter(self)
    inZone = true
end

local function onExit(self)
    inZone = false
end

local function isInside(self)
    inZone = true
end

local function SetupStoreZones()
    Zone = lib.zones.poly({
        points = Config.Zone,
        debug = false,
        thickness = 50,
        inside = isInside,
        onEnter = onEnter,
        onExit = onExit,
    })
    ResetBlips()
    SetupBlips()
end

local function goSpot()
    CreateThread(function()
        while true do
            if inZone then
                TriggerServerEvent('kd_fishing:server:stage2', total)
                break
            end
            Wait(500)
        end
    end)
end

local function catchFish()
    QBCore.Functions.Notify("A little nibble...", "primary", 5000)
    math.randomseed(GetCloudTimeAsInt())
    local found = false
    local rdm = math.random(1,4)
    if rdm < 2 then
        local trashs = Config.Trash
        local fishChance = math.random(0, 100)
        local trash = nil
        while not found do
            local rd = math.random(1, #trashs)
            if trashs[rd].chance > fishChance then
                found = true
                trash = trashs[rd]
                break
            end
            Wait(50)
        end
        local loop = {}
        local loopCount = 0
        while loopCount < trash.skill do
            loopCount = loopCount + 1
            loop[#loop+1] = {areaSize = math.random(30, 60), speedMultiplier = math.random(5, 7) / 10}
        end
        local success = lib.skillCheck(loop, {'e'})
        if success then
            TriggerServerEvent('kd_fishing:server:earnTrash', trash.name)
        end
    else
        local fishs = Config.Fishing
        local fishChance = math.random(0, 100)
        local fish = nil
        while not found do
            local rd = math.random(1, #fishs)
            if fishs[rd].chance > fishChance then
                found = true
                fish = fishs[rd]
                break
            end
            Wait(50)
        end
        local loop = {}
        local loopCount = 0
        while loopCount < fish.skill do
            loopCount = loopCount + 1
            loop[#loop+1] = {areaSize = math.random(30, 60), speedMultiplier = math.random(5, 7) / 10}
        end
        local success = lib.skillCheck(loop, {'e'})
        if success then
            amounts += 1
            total += 1
            TriggerServerEvent('kd_fishing:server:stage2', total)
            TriggerServerEvent('kd_fishing:server:earn', fish.name, fish.point)
        end
    end
    if not found then
        QBCore.Functions.Notify("A little nibble...", "error", 5000)
    end
    if rod ~= nil then
        DeleteObject(rod)
        rod = nil
    end
    ClearPedTasks(PlayerPedId())
end

local function usingRod()
    if fishing then return end
    fishing = true
    local ped = PlayerPedId()
    local bone = GetPedBoneIndex(ped, 60309)
    RequestAnimDict("amb@world_human_stand_fishing@idle_a")
    RequestModel("prop_fishing_rod_01")
    while not HasAnimDictLoaded("amb@world_human_stand_fishing@idle_a") or not HasModelLoaded("prop_fishing_rod_01") do
        Wait(0)
    end
    rod = CreateObject(`prop_fishing_rod_01`, 1.0, 1.0, 1.0, 1, 1, 0)
    ClearPedTasksImmediately(ped)
    AttachEntityToEntity(rod, ped, bone, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 1)
    Wait(0)
    TaskPlayAnim(ped, "amb@world_human_stand_fishing@idle_a", "idle_c", 20.0, -8, -1, 49, 0, 0, 0, 0)
    local seconds = 0
    CreateThread(function()
        while fishing do
            Wait(5000)
            seconds = seconds + 5
            local chance = math.random(10, 20)
            if chance + seconds > 100 then
                fishing = false
                catchFish()
            end
        end
    end)
    CreateThread(function()
        while fishing do
            if not IsEntityPlayingAnim(ped, "amb@world_human_stand_fishing@idle_a", "idle_c", 3) then
                TaskPlayAnim(ped, "amb@world_human_stand_fishing@idle_a", "idle_c", 20.0, -8, -1, 49, 0, 0, 0, 0)
            end
            Wait(250)
        end
    end)
end


RegisterNetEvent('kd-fishing:client:fishgps', function()
    SetNewWaypoint(-1505.1667, 1511.7402)
end)

RegisterNetEvent('kd_fishing:client:signIn', function()
    TriggerEvent('rep-tablet:client:signIn', 'fishing')
    signIn = true
    total = 0
    amounts = 0
end)

AddEventHandler('rep-tablet:client:checkout', function ()
    signIn = true
    total = 0
    amounts = 0
end)

RegisterNetEvent('kd_fishing:client:signOut', function()
    TriggerEvent('rep-tablet:client:signOff')
    signIn = false
    canFish = false
    TriggerServerEvent('kd_fishing:server:pay', amounts)
    amounts = 0
end)

RegisterNetEvent('rep-tablet:client:readyforjob', function()
    if LocalPlayer.state.nghe == "fishing"  then
        TriggerServerEvent('kd_fishing:server:stage1')
    end
end)

RegisterNetEvent('kd_fishing:client:stage1', function()
    goSpot()
end)

RegisterNetEvent('kd_fishing:client:gps', function()
    SetNewWaypoint(-1030.3699, 2844.5898)
    canFish = true
end)

RegisterNetEvent('kd_fishing:client:syncTotal', function(amount)
    total = amount
end)

RegisterNetEvent('kd_fishing:client:useRod',function ()
    if fishing then return end
    if canFish then
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local headPos = GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0)
        local offsetPos = GetOffsetFromEntityInWorldCoords(ped, 0.0, 50.0, -25.0)
        local water, waterPos = TestProbeAgainstWater(headPos.x, headPos.y, headPos.z, offsetPos.x, offsetPos.y, offsetPos.z)
        local inWater = IsEntityInWater(ped)
        local swim =  IsPedSwimming(ped)
        if (water or inWater) and not swim and inZone then
            usingRod()
        elseif swim then
            QBCore.Functions.Notify("You can't have your fish and swim it too!", "error", 5000)
        elseif not inZone then
            QBCore.Functions.Notify("There seems to be no fish here", "error", 5000)
        end
    else
        QBCore.Functions.Notify("Please sign in a job before using a fishing rod", "error", 5000)
    end
end)

RegisterNetEvent('kd_fishing:client:giveAward', function (ranking)
    local gender = "Mr"
    if QBCore.Functions.GetPlayerData().charinfo.gender == 1 then
        gender = "Mrs"
    end
    local charinfo = QBCore.Functions.GetPlayerData().charinfo.firstname.." "..QBCore.Functions.GetPlayerData().charinfo.lastname
    if ranking ==1 then
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = "Fishing Tournament",
            subject = "Congratulatory Mail",
            message = "Dear "..gender.." "..charinfo.." ,<br /><br /> I am writing to extend my warmest congratulations to you and your team on winning first prize in the fishing tournament. Your hard work, dedication, and skill have paid off, and it is a well-deserved victory.<br />Your success is a testament to the exceptional teamwork, sportsmanship, and perseverance that you and your team displayed throughout the tournament. It was a pleasure to witness your exceptional performance, and I am sure that you have made the entire organization proud.<br /><br />Once again, congratulations on this outstanding achievement, and I wish you all the best in your future endeavors.<br />Sincerely,<br /><strong>Kiddd Dev</strong><br />",
            button = {}
        })
        TriggerServerEvent('kd_fishing:server:giveAward', 1)
    elseif ranking ==2 then
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = "Fishing Tournament",
            subject = "Congratulatory Mail",
            message = "Dear "..gender.." "..charinfo.." ,<br /><br /> I am writing to extend my warmest congratulations to you and your team has won the second prize in the fishing tournament. Your hard work, dedication, and skill have paid off, and it is a well-deserved victory.<br />Your success is a testament to the exceptional teamwork, sportsmanship, and perseverance that you and your team displayed throughout the tournament. It was a pleasure to witness your exceptional performance, and I am sure that you have made the entire organization proud.<br /><br />Once again, congratulations on this outstanding achievement, and I wish you all the best in your future endeavors.<br />Sincerely,<br /><strong>Kiddd Dev</strong><br />",
            button = {}
        })
        TriggerServerEvent('kd_fishing:server:giveAward', 2)
    elseif ranking ==3 then
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = "Fishing Tournament",
            subject = "Congratulatory Mail",
            message = "Dear "..gender.." "..charinfo.." ,<br /><br /> I am writing to extend my warmest congratulations to you and your team has taken the third place prize in the fishing tournament. Your hard work, dedication, and skill have paid off, and it is a well-deserved victory.<br />Your success is a testament to the exceptional teamwork, sportsmanship, and perseverance that you and your team displayed throughout the tournament. It was a pleasure to witness your exceptional performance, and I am sure that you have made the entire organization proud.<br /><br />Once again, congratulations on this outstanding achievement, and I wish you all the best in your future endeavors.<br />Sincerely,<br /><strong>Kiddd Dev</strong><br />",
            button = {}
        })
        TriggerServerEvent('kd_fishing:server:giveAward', 3)
    end
end)

AddEventHandler('onResourceStart', function(resource)
    if GetCurrentResourceName() == resource then
        cPed()
        SetupStoreZones()
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if GetCurrentResourceName() == resource then
        DeleteEntity(Ped)
    end
end)


RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    Wait(10000)
    cPed()
    SetupStoreZones()
end)