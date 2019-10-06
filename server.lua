print("X-Vest Made by Xerxes468893#0001 / Peter Greek")  -- dont remove please
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("vest", function(source, args, raw)
	local player = source 
	local xPlayer = ESX.GetPlayerFromId(player)
	if xPlayer.job.name == 'police' then
		local version = args[1]
		TriggerClientEvent("ARPF:vest", source, version)
		CancelEvent()
	else
		TriggerClientEvent('esx:showNotification', _source, "Insufficent Permissions")
	end
end, false)

RegisterCommand("removevest", function(source, args, raw)
	local player = source
	local xPlayer = ESX.GetPlayerFromId(player)
	if xPlayer.job.name == 'police' then
		TriggerClientEvent("ARPF:vestoff", source)
		CancelEvent()
	else
		TriggerClientEvent('esx:showNotification', _source, "Insufficent Permissions")
	end
end, false)
