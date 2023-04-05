local Translations = {
    info = {
        ['Stored'] = "Køretøj opbevaret!",
        ['searched'] = "Toner er allerede søgt",
        ['search'] = "Søg ",
        ['Cancel'] = "personsøgere er annulleret",
        ['Reports'] = "Rapporter ",
        ['Not_Uniform'] = 'Du er ikke i uniform',
        ['Right_Tool'] = "Du har ikke det rigtige værktøj!"
    },
    error = {
        ['Invalid_tones'] = "Ugyldige toner, tjek dine personsøgere",
        ['Sound_Sirens'] = "Ugyldige stationer til sirener, tjek dine kommandoargumenter",
        ['whitelisted'] = "Du er ikke whitelisted til denne kommando",
        ['turned_off'] = "personsøgere var slukket",
        ['examined'] = "Toner undersøges, vent venligst",
        ['supplied'] = "En eller flere leverede stationer lyder allerede!",
        ['Not_Connected'] = 'Ikke forbundet til brandhane!',
        ['connected'] = 'Du har allerede forbundet til brandhane!',
        ['Disconnected'] = 'Frakoblet brandhane',
        ['Not_OnDuty'] = 'Du er ikke på vagt!',
        ['Is_Connected'] = 'Tilsluttet brandhane!'
    },
    success = {
        ['turned_on'] = 'personsøgere er aktiveret',
        ['pagerset'] = 'personsøgere indstillet til: ',
    },
    progressbar = {
        ['use_scba'] = 'Tager et brandudstyr på..',
        ['remove_scba'] = 'Tag dit brandudstyr af..',
        ['oxygen_on'] = 'Ilttanken er aktiveret',
        ['oxygen_off'] = 'Ilttanken er slukket',
        ['oxygen_empty'] = 'Ilttanken er tom!',
        ['oxygen_low'] = 'Ilttanken er lav!',
        ['oxygen_resupply'] = 'genopfyld iltbeholder',
        ['Smoke'] = 'Indånding af røg!'
    },
    target = {
        ['Connect'] = 'Tilslut til brandhane',
        ['Disconnect'] = 'Frakoblet fra brandhane'
    },       
}

if GetConvar('qb_locale', 'en') == 'da' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang
    })
end
