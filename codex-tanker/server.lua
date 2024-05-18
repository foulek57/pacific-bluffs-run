ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
TriggerEvent('esx_society:registerSociety', 'name', 'name', 'society_', 'society_', 'society_', {type = 'private'})


RegisterServerEvent('juanito:finish')
AddEventHandler('juanito:finish', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local total   = math.random(Config.GainsJob.min, Config.GainsJob.max);

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ ', function(account) -- Le nom de la société
        account.addMoney(total)
    end)

    local playerGainsMin = Config.PlayerGains.min
    local playerGainsMax = Config.PlayerGains.max
    local playerGains = math.random(playerGainsMin, playerGainsMax)

    xPlayer.addMoney(playerEarnings) -- Ajoute l'argent au joueur

    TriggerClientEvent('esx:showAdvancedNotification', _source, '~y~Notification', '~y~NOM ENTREPRISE', "Vous venez de faire gagner ~y~"..total.."$~s~ à l'entreprise", 'CHAR_CARSITE3')
end)