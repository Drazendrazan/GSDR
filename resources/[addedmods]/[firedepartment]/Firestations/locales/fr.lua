local Translations = {
    info = {
        ['Stored'] = "Véhicule stocké!",
        ['searched'] = "Le toner a déjà été fouillé",
        ['search'] = "recherche ",
        ['Cancel'] = "Pager a été annulé",
        ['Reports'] = "Rapports ",
        ['Not_Uniform'] = "Vous n'êtes pas en uniforme",
        ['Right_Tool'] = "Vous n'avez pas le bon outil!"
    },
    error = {
        ['Invalid_tones'] = "Tons invalides, veuillez vérifier vos téléavertisseurs",
        ['Sound_Sirens'] = "Des stations non valides pour sonner, vérifiez vos arguments de commandement",
        ['whitelisted'] = "Vous n'êtes pas sur la liste blanche sur cette commande",
        ['turned_off'] = "le téléavertisseur a été éteint",
        ['examined'] = "Les tons sont examinés, veuillez patienter",
        ['supplied'] = "Une ou plusieurs stations fournies sonnent déjà!",
        ['Not_Connected'] = "Non connecté à la bouche d'incendie!",
        ['connected'] = "Vous êtes déjà connecté à la bouche d'incendie !",
        ['Disconnected'] = "Bouche d'incendie déconnectée",
        ['Not_OnDuty'] = "Vous n'êtes pas de service !",
        ['Is_Connected'] = "Bouche d'incendie connectée !"
    },
    success = {
        ['turned_on'] = "le téléavertisseur est activé",
        ['pagerset'] = "le téléavertisseur réglé sur: "
    },
    progressbar = {
        ['use_scba'] = "Mettre une tenue de pompier..",
        ['remove_scba'] = "Enlevez votre tenue de pompier..",
        ['oxygen_on'] = "Le réservoir d'oxygène est activé",
        ['oxygen_off'] = "Le réservoir d'oxygène est éteint",
        ['oxygen_empty'] = "Le réservoir d'oxygène est vide !",
        ['oxygen_low'] = "Le réservoir d'oxygène est bas !",
        ['oxygen_resupply'] = "remplir le réservoir d'oxygène",
        ['Smoke'] = "Inhalation de fumée !"
    },
    target = {
        ['Connect'] = "Connectez-vous à la bouche d'incendie",
        ['Disconnect'] = "Déconnecté de la bouche d'incendie"
    },    
}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang
    })
end

