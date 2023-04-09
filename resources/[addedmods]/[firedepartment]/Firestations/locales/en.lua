local Translations = {
    info = {
        ['Stored'] = 'Vehicle Stored',
        ['searched'] = 'Toner has already been searched',
        ['search'] = 'search ',
        ['Cancel'] = 'pager was cancel',
        ['Reports'] = 'Reports ',
        ['Not_Uniform'] = 'You are Not in Uniform',
        ['Right_Tool'] = "You don't have the right tool!",
        ['hose_back'] = " Put fire hose back in the truck"
    },
    error = {
        ['Invalid_tones'] = 'Invalid tones, please check your pagers',
        ['Sound_Sirens'] = 'Innvalid stations to sound, check your command arguments',
        ['whitelisted'] = 'You are not whitelisted to this command',
        ['turned_off'] = 'pager was turned off',
        ['examined'] = 'Tones are being examined, please wait',
        ['supplied'] = 'One or more supplied stations are already sounding!',
        ['Not_Connected'] = 'Not connected to hydrant!',
        ['connected'] = 'You have already connected to the hydrant!',
        ['Disconnected'] = 'Disconnected from hydrant',
        ['Not_OnDuty'] = 'You are not on duty!'
    },
    success = {
        ['turned_on'] = 'pager is activated',
        ['pagerset'] = 'pager set to: ',
        ['Is_Connected'] = 'Connected to hydrant!'
    },
    progressbar = {
        ['use_scba'] = 'Putting on a fire gear..',
        ['EquipedScba'] = 'You have equiped your SCBA!',
        ['remove.equiped_scba'] = 'Take off your SCBA..',
        ['remove_scba'] = 'Take off your fire gear..',
        ['oxygen_on'] = 'The Oxygen tank is activated',
        ['oxygen_off'] = 'The Oxygen tank is off',
        ['oxygen_empty'] = 'Oxygen Tank is Empty!',
        ['oxygen_low'] = 'Oxygen Tank is low!',
        ['oxygen_resupply'] = 'refill Oxygen Tank',
        ['Smoke'] = 'Smoke Inhalation!',
		['open_hydrant'] = 'Open hydrant',
		['close_hydrant'] = 'close fire hydrant'
    },
    target = {
        ['Connect'] = 'Connect to Hydrant',
        ['Disconnect'] = 'Disconnect from Hydrant',
		['Gear'] = 'Turnout Gear',
		['toolsmenu'] = 'Tools',
		['Stash'] = 'Fire Stash'
    },    
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
