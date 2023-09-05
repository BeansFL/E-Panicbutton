Config = {}

Config.Framework = "esx" -- esx or qbcore

Config.Jobs = { -- Add your jobs here
    "police",
    "doa",
    "sheriff",
    "doj",
    "ambulance"
} 

Config.BlipTime =  50     -- in seconds  

Config.Blipname = "Priority Signal" -- Blip name


Config.SenderNotification = 'Needs immediate assistance!'  -- Notification when panic is triggered
Config.NotAllowedNotification = 'Youre not allowed to use the panicbutton!' -- Notification when panic is not allowed
Config.ShowNotification = true -- Set to false if you dont want to use notifications
Config.NotificationTitle = '10-99' -- Notification title
Config.NotificationText = ' Officer Triggered a Panic' -- Notification text
Config.NotificationTime = 30     -- in seconds 

-- Item 
Config.UseItem = true -- set to false if you dont want to use Items
Config.ItemName = 'panicbutton'   -- Item name
Config.ItemNotAllowed = "Item using disabled" -- Message when item is not allowed

-- Command and keyboardtriggers
Config.Defaultkey = "0" 
Config.AllowKeyboardTrigger = true
Config.AllowCommand = true
Config.PanicCommand = 'panic'
Config.CommandNotAllowed = 'Command is disabled'
 
-- Webhooksf
Config.Webhooktitle = 'Panicbutton'
Config.Servername = 'Evolved-Studios'
Config.embedcolor = "14423100"
 

Config.Translation = { -- for webhooks 
    ["panic_triggered"] = "Panicbutton was triggered by",
}


-- Set your custom notifications here!

function notification(msg)
    if Config.Framework == "esx" then
        local mugshot, mugshotStr = ESX.Game.GetPedMugshot(PlayerPedId()) 
        ESX.ShowAdvancedNotification('' .. Config.NotificationTitle .. '', '', msg, mugshotStr, 1)
        UnregisterPedheadshot(mugshot)
    else
        local mugshot, mugshotStr = GetPedMugshot(PlayerPedId()) 
        ShowAdvancedNotification('' .. Config.NotificationTitle .. '', '', msg, mugshotStr, 1)
        UnregisterPedheadshot(mugshot) 
    end
end

function ShowNotification(text)
    SetNotificationTextEntry('STRING') 
    AddTextComponentString(text)
    DrawNotification(false, true)
end
 

function GetPedMugshot(ped)
    if not DoesEntityExist(ped) then return end
    local mugshot = transparent and RegisterPedheadshotTransparent(ped) or RegisterPedheadshot(ped)

    while not IsPedheadshotReady(mugshot) do
        Wait(0)
    end

    return mugshot, GetPedheadshotTxdString(mugshot)    
end

function ShowAdvancedNotification(sender, subject, msg, textureDict, iconType, flash, saveToBrief, hudColorIndex)
    if saveToBrief == nil then
        saveToBrief = true
    end
    AddTextEntry('esxAdvancedNotification', msg)
    BeginTextCommandThefeedPost('esxAdvancedNotification')
    if hudColorIndex then
        ThefeedSetNextPostBackgroundColor(hudColorIndex)
    end
    EndTextCommandThefeedPostMessagetext(textureDict, textureDict, false, iconType, sender, subject)
    EndTextCommandThefeedPostTicker(flash or false, saveToBrief)
end