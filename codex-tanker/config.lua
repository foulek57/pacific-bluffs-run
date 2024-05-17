Config = {
    -- Filling configuration
    fillDuration = 0.1*60*100000, -- 7 minutes en millisecondes
    drainDuration = 7*60*100000,
    -- Max speed in miles per hour (converted to meters per second)
    maxSpeedMph = 60.0,
    -- Allowed vehicle models
    allowedVehicles = {
        "hauler"
    },
    -- Remplissage
    refillLocations = {
        { x = 1240.08, y = -1479.96, z = 34.76 }, -- A coté de la caserne de pompiers
    },
    -- Livraison
    deliveryLocations = {
        { x = 959.43, y = -1416.38, z = 31.30 } -- A définir une fois le mapping mis
    }
}
