Shared = {}

-- Did you renamed your qb-target name? If yes then only change it | Ignore this if you set UseTaxi = false OR using Taxi as cutscene
Shared.Target = "qb-target"
    
-- Did you renamed your fuel script name? If yes then only change it else choose it from here - LegacyFuel, cdn-fuel, ps-fuel  
Shared.Fuel = "cdn-fuel"

-- Do you want to use the emote after the cutscene is over or after the taxi drops you at your destination?
Shared.UseEmote = true
    
-- Name of the emote. If your want to use the airport bag emote and dont have it get the code from here - https://3rror-hub.gitbook.io/docementation/qbcore/3h-cutscene
Shared.Emote = "airportbag"
    
Shared.WelcomeMessage = {
    -- Do you want to welcome your new players with a sweet welcome message?
    Enable = true,
        
    -- What do you want the welcome message to be?
    Text = "Hello dear, welcome to our server",
}
    
Shared.Cutscene = {
    -- Want a command so that you can test the cutscene? Recommeded to set UseCommand = false if testing is done! 
    UseCommand = false,

    -- What do you want the command to be to check the cutscene?
    Command = "cutscene",

    -- Do you want Lamar's cutscene part to be included?
    UseLamarPart = true,
}

Shared.Taxi = {
    -- Do you want the ai-taxi driver to drop the player at the destination after the cutscene is ended? 
    UseTaxi = true,

    -- The taxi driver will take the player to the dropoff location set on config.
    -- 1) "standalone" = Lets the player manually choose whether he/she wants a taxi or not after the cutscene is over using qb-target interaction.
    -- 2) "merge" = After the cutscene is over the player will be automatically wrapped inside a taxi and will be sent to the destination. 
    UseType = "merge",

    -- Ignore this if UseTaxi = false OR UseType = "merge"
    Ped = {
        -- If UseType = "standalone" then this is where the ped will spawn so that the player could get the taxi using qb-target interaction | Ignore this if UseType = "merge" 
        Spawn = vector4(-1032.48, -2735.74, 20.17, 112.18),

        -- Ped model of the taxi driver as well as the ped standing if UseType = "standalone". You can change the model from here - https://docs.fivem.net/docs/game-references/ped-models/  
        Model = "a_m_m_indian_01",

        -- Do you want the standing ped if UseType = "standalone" to do any animation? If you want to change the animation get the list from here - https://alexguirre.github.io/animations-list/
        UseAnim = true,
        AnimDictionary = "timetable@amanda@ig_4", -- Name of the animation dictionary
        AnimName = "ig_4_base", -- Name of the animation

        -- Text which will shown over the ped if UseType = "standalone" 
        Label = "Want me to drop you at Cityhall?",
    },
        
    Vehicle = {
        -- Do you want any other car as a taxi? then change it from here. And make sure the taxi model is a car
        Model = "taxi",

        -- Do want to change the number plate of the taxi? then change it from here. And make sure the Plate doesn't exceed more than 8 digits/character.
        Plate = "3RRORHUB",

        -- Do you want to change the colour of the taxi model? Get the colour codes from here - https://pastebin.com/pwHci0x
        ChangeColor = true,
        Primary = 0, -- Primary colour of the taxi.
        Secondary = 88, -- Secondary colour of the taxi.

        -- Driving style of the taxi driver | If you want to change it get the styles from here - https://gtaforums.com/topic/822314-guide-driving-styles/ 
        ChangeStyle = true,
        DriveStyle = 786469, 
    },  
       
    -- This is location where the taxi will drop the player | By default, the location is set for qb default Cityhall i.e. Alta Apartment
    DropoffLoc = vector3(-243.67, -997.56, 29.13),

    -- This is the message that the player will get after he's dropped at the destination.
    DropoffMsg = "You have been dropped at Cityhall",

}

Shared.Blip = {
    -- Do you want to use the airport blip?
    UseBlip = true,
    Coords = vector3(-1037.88, -2738.34, 20.17), -- Coords of the blip
    Sprite = 423, -- Do you want to change the blip? Get the blip codes from here - https://docs.fivem.net/docs/game-references/blips/ 
    Scale = 0.7, -- Size of the blip
    Colour = 3, -- Do you want to change the colour of the blip? Get the colour codes from here - https://docs.fivem.net/docs/game-references/blips/
    Text = "LS Airport", -- Name of the blip
}
