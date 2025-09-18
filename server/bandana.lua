local RSGCore = exports['rsg-core']:GetCoreObject()
lib.locale()

RSGCore.Commands.Add('bandana', locale('sv_bandana'), {}, false, function(source)
    local src = source
    TriggerClientEvent('rsg-bandana:client:ToggleBandana', src)
end)

-- Registrar item utilizável no inventário para acionar a bandana com duplo clique
if RSGCore and RSGCore.Functions and RSGCore.Functions.CreateUseableItem then
    RSGCore.Functions.CreateUseableItem('bandana', function(source, item)
        local src = source
        TriggerClientEvent('rsg-bandana:client:ToggleBandana', src)
    end)
end
