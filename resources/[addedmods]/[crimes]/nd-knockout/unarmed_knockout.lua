local QBCore = exports["qb-core"]:GetCoreObject()
local knockedOut = false
local wait = 15
local count = 60
local isdead = false

CreateThread(function()
        while true do
            Wait(1000)
            local ped = PlayerPedId()
            PlayerData = QBCore.Functions.GetPlayerData()
            if IsPedInMeleeCombat(ped) then
                --  {UNARMED ONLY}
                if (HasPedBeenDamagedByWeapon(ped, GetHashKey("WEAPON_UNARMED"), 0)) then
                    -- Health to be knocked out
                    if GetEntityHealth(ped) < 145 then
                        SetPlayerInvincible(ped, false)
                        -- Position taken by your Ped
                        SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
                        -- Time to wait
                        wait = 60
                        QBCore.Functions.Progressbar("knocked-out", "Eszméletlen...", 45000, false, false, {
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true
                            },
                            {},
                            {},
                            {},
                            function()
                                -- Done
                                ExecuteCommand('e c')
                                QBCore.Functions.Notify("Felkeltél!", "success", 5000)
                            end,
                            function()
                            end,
                            "fa-solid fa-face-dizzy")            
                      knockedOut = true
                        -- Health after knockout preferably dont make it more than 150 (50 %) because people will abuse with it {No need to go to hospital or so}
                        SetEntityHealth(ped, 140)
                    end
                end
            end
            if knockedOut == true then
                --Your ped is able to die
                local ped = PlayerPedId()
                SetPlayerInvincible(PlayerPedId(), false)
                DisablePlayerFiring(PlayerPedId(), true)
                ResetPedRagdollTimer(PlayerPedId())
                CreateThread(function()
                    while knockedOut == true do
                        ExecuteCommand('e passout')
                        Wait(500)
                    end
                end)
                -- Blur Cam
                --SetTimecycleModifier("hud_def_blur")
                if wait >= 0 then
                    count = count - 1
                    if count == 0 then
                        count = 60
                        wait = wait - 1
                        -- in case bark
                        if GetEntityHealth(PlayerPedId()) <= 50 then
                            -- Ped healing
                            SetEntityHealth(PlayerPedId(), GetEntityHealth(ped) + 2)
                        end
                    end
                else
                    -- Remove Blue cam
                   -- SetTimecycleModifier("")
                    --SetTransitionTimecycleModifier("")
                    -- Ped Able to die again
                    ExecuteCommand('e c')
                    SetPlayerInvincible(PlayerPedId(), false)
                    knockedOut = false
                end
            end
            -- Simple clear Knockout if Dead
            if PlayerData['isdead']then
                 -- Remove Konockout effect
                 SetTimecycleModifier("")
                 ExecuteCommand('e c')
                 SetTransitionTimecycleModifier("")
                 knockedOut = false
             end
        end
    end
)


