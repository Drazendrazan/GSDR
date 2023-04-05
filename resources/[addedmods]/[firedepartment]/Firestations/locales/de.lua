local Translations = {
    info = {
        ['Stored'] = "Fahrzeug gespeichert!",
        ['searched'] = "Toner wurde bereits durchsucht",
        ['search'] = "suchen ",
        ['Cancel'] = "Pager wurde absagt",
        ['Reports'] = "Berichte ",
        ['Not_Uniform'] = 'Du trägst keine Uniform',
        ['Right_Tool'] = "Sie haben nicht das richtige Werkzeug!"
    },
    error = {
        ['Invalid_tones'] = "Ungültige Töne, bitte überprüfen Sie Ihre Pager",
        ['Sound_Sirens'] = "Ungültige Stationen, um zu klingen, überprüfen Sie Ihre Befehlsargumente",
        ['whitelisted'] = "Sie sind nicht in diesem Befehl weiße",
        ['turned_off'] = "Pager wurde ausgeschaltet",
        ['examined'] = "Töne werden untersucht, bitte warten Sie",
        ['supplied'] = "Ein oder mehrere mitgelieferte Stationen klingen bereits!",
        ['Not_Connected'] = 'Nicht mit Hydrant verbunden!',
        ['connected'] = 'Sie haben sich bereits mit dem Hydranten verbunden!',
        ['Disconnected'] = 'Abgeschalteter Hydrant',
        ['Not_OnDuty'] = 'Sie sind nicht im Dienst!',
        ['Is_Connected'] = 'Hydrant angeschlossen!'
    },
    success = {
        ['turned_on'] = 'Pager wird aktiviert',
        ['pagerset'] = 'Pager eingestellt auf: ',
    },
    progressbar = {
        ['use_scba'] = 'Feuerzeug anziehen..',
        ['remove_scba'] = 'Nimm deine Feuerwehrausrüstung ab..',
        ['oxygen_on'] = 'Der Sauerstofftank wird aktiviert',
        ['oxygen_off'] = 'Der Sauerstofftank ist ausgeschaltet',
        ['oxygen_empty'] = 'Der Sauerstofftank ist leer!',
        ['oxygen_low'] = 'Der Sauerstofftank ist niedrig!',
        ['oxygen_resupply'] = 'Sauerstofftank auffüllen',
        ['Smoke'] = 'Einatmen von Rauch!'
    },
    target = {
        ['Connect'] = 'An Hydranten anschließen',
        ['Disconnect'] = 'Vom Hydranten getrennt'
    },     
}

if GetConvar('qb_locale', 'en') == 'de' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
