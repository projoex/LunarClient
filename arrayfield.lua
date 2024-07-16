getgenv().SecureMode = false
local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
local Window = ArrayField:CreateWindow({
    Name = "ArrayField Example Window",
    LoadingTitle = "ArrayField Interface Suite",
    LoadingSubtitle = "by Arrays",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = Lunar, -- Create a custom folder for your hub/game
       FileName = "BABFT"
    },
    Discord = {
       Enabled = true,
       Invite = "https://discord.gg/CrTN6RhRfP", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Key System ❤",
       Subtitle = "Lunar Client",
       Note = "sigma tester",
       FileName = "Key", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
       Actions = {
             [1] = {
                 Text = 'Click here to copy the key link <--',
                 OnPress = function()
                     print('Pressed')
                 end,
                 }
             },
       Key = {"https://github.com/projoex/KeySystem/blob/main/Key"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })
 local PlayerTab = Window:CreateTab("Player", 4483362458) -- Title, Image1
