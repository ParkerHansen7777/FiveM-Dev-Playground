local spawnPos = vector3(-288.3730, -193.3801, 38.9225)

AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
            model = 'ig_claypain'
        })
    end)

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
end)

