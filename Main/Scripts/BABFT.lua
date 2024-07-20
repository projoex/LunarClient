if game.Players.LocalPlayer.Name == "projoex" or "europa822" then
   setclipboard("ZLyjKanMSwytcg0jP535c4fFXaQAjm5")
   end

getgenv().SecureMode = false
local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
ArrayField:Notify({
   Title = "Loaded! ❤",
   Content = "Thanks For loading Lunar Client",
   Duration = 6.5,
   Image = 18575726965,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
 },
})

local Player = game.Players.LocalPlayer
local PlayerName = Player.Name
local Window = ArrayField:CreateWindow({
    Name = "Lunar Client",
    LoadingTitle = "Lunar Client",
    LoadingSubtitle = "by KizzyTheDog#0437",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "LunarClient", -- Create a custom folder for your hub/game
       FileName = "BABFT"
    },
    Discord = {
       Enabled = true,
       Invite = "CrTN6RhRfP", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
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
                 Text = 'Click here to copy the key link1 <--',
                 OnPress = function()
                     print('Pressed')
                     setclipboard("drake drake go away")
                 end,
                 }
             },
       Key = {"https://raw.githubusercontent.com/projoex/KeySystem/main/Key?token=GHSAT0AAAAAACU4GLKTKVWLP5W2ENLVFWN2ZUWYQ4Q"} -- List of keys that will be accepted by the system
       -- ZLyjKanMSwytcg0jP535c4fFXaQAjm5
    }
 })
local PlayerTab = Window:CreateTab("Player", 18575754763) -- Title, Image
local ScriptTab = Window:CreateTab("Scripts", 18575788890) -- Title, Image
local SettingsTab = Window:CreateTab("Settings", 18575932426) -- Title, Image
local PremiumButton = ScriptTab:CreateButton({
   Name = "Premium script (Doesnt work on Solara)",
   Interact = 'Click',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/max2007killer/Build-a-Boat-Premium-/main/OBFUSCATED.txt", true))()
      print("PremiumWorks")
   end,
})
local StealButton = ScriptTab:CreateButton({
   Name = "Steal and load builds Wave Version (Doesnt work on Solara )",
   Interact = 'Click',
   Callback = function()
      loadstring(game:HttpGet(("https://raw.githubusercontent.com/max2007killer/auto-build-not-limit/main/buildaboatv2obs.txt"),true))()
   print("StealWorks")
   end,
})
local Input = SettingsTab:CreateInput({
   Name = "Key",
   PlaceholderText = "Key here",
   NumbersOnly = false, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = 9, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   
   if Text == "DevKey" or "TesterKey" then
      if Text == "DevKey" then
      print("DevKey")
      else
         if Text == "TesterKey" then
            print("TesterKey")
            else
            print("Key is Invalid")
         end
      end
   end

   -- The variable (Text) is a string for the value in the text box
   end,
})

local SpeedSlider = PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1",
   Callback = function(Value1)
      Player.Character:WaitForChild("Humanoid").WalkSpeed = Value1
   end,
})
local JumpSlider = PlayerTab:CreateSlider({
   Name = "JumpPower",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Jump",
   CurrentValue = 50,
   Flag = "Slider2",
   Callback = function(Value2)
      Player.Character:WaitForChild("Humanoid").JumpPower = Value2
   end,
})
local HideGoldButton = PlayerTab:CreateButton({
   Name = "Hide Gold GUI",
   Interact = 'Click',
   Callback = function()
   Player.PlayerGui.GoldGui.Enabled = not Player.PlayerGui.GoldGui.Enabled
   print("Hidden")
   end,
})
local HideShopButton = PlayerTab:CreateButton({
   Name = "Hide Shop GUI",
   Interact = 'Click',
   Callback = function()
   Player.PlayerGui.ShopGui.Enabled = not Player.PlayerGui.ShopGui.Enabled
   print("Hidden")
   end,
})
local WaterDMGButton = PlayerTab:CreateButton({
   Name = "Remove Water Damage",
   Interact = 'Click',
   Callback = function()
         game.Workspace.Water:Destroy()
   end,
})
