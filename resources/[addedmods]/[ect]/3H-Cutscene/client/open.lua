-- You can add whatever you like here when the cutscene starts | Suggested better not to add anything here as it might screw it!
function CutsceneStarted() 
    
end

-- You can add whatever you like here when the cutscene ends
function CutsceneEnded() 
    -- Recommended not to remove this if you are using qb-apartments as it reset the inside apartment function
    TriggerEvent("3H-CutScene:client:disableInAparts") 
    -- Add your codes below!!


end

-- You can add whatever you like here when the taxi ride starts
function TaxiRideStarted()
    -- Add your codes below!!

end

-- You can add whatever you like here when the taxi ride ends
function TaxiRideEnded() 
    -- You can remove this if you wish to. This was added so the players don't bleed due to the deadly driving of the ai taxi driver! 
    TriggerEvent("hospital:client:Revive") 
    -- Add your codes below!!
end