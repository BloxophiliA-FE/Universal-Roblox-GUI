--This is very long code, go to README file to get short version.

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Universal GUI V1.0",
   LoadingTitle = "Loading GUI",
   LoadingSubtitle = "by BloxophiliA",
   Discord = {
      Enabled = true,
      Invite = "HudHMAEXhB", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "You need a key to pass",
      Subtitle = "Warning: Hacking could result in a ban, use at your own risk",
      Note = "Keys are available in the Discord",
      FileName = "KeyBee", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"INoKillBeeKeyLol"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("SuperHuman") -- Title, Image

local Slider = MainTab:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 512},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        getgenv().WalkSpeedValue = (Value); --set your desired walkspeed here
local Player = game:service'Players'.LocalPlayer;
Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end)
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Jump Power",
   Range = {50, 500},
   Increment = 1,
   Suffix = "Jump Power",
   CurrentValue = 50,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})
local Toggle = MainTab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Flag = "Toggle1234", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      loadstring(game:HttpGet('https://raw.githubusercontent.com/BloxophiliA-FE/Universal-Roblox-GUI/main/Scripts/infjump.lua'))()
   end,
})

local Tab = Window:CreateTab("Cheats", nil) 
local Button = Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Owl Hub (aimbot)",
   Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"),true))();
   end,
})
local Button = Tab:CreateButton({
   Name = "Spin",
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/BloxophiliA-FE/Universal-Roblox-GUI/main/spin.lua'),true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Reach (r to close)",
   Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/BloxophiliA-FE/Universal-Roblox-GUI/a9e4956b358ed8d07b31c04d382e46ac899121c3/reach.lua'),true))()
   end,
})
local Section = Tab:CreateSection("Tools")
local Button = Tab:CreateButton({
   Name = "Remote Spy",
   Callback = function()
   loadstring(game:HttpGet("https://github.com/richie0866/remote-spy/releases/latest/download/RemoteSpy.lua"))()
   end,
})

local Tab = Window:CreateTab("FE Scripts", nil) -- Title, Image
local Button = Tab:CreateButton({
   Name = "Spider (only works in R6)",
   Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/BloxophiliA-FE/Universal-Roblox-GUI/main/spiderFE.lua'),true))()
   end,
})

local Tab = Window:CreateTab("Other GUIs", nil) -- Title, Image
local Button = Tab:CreateButton({
   Name = "Spider GUI",
   Callback = function()
_G.RedGUI = false
_G.Theme = "Dark"
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/Spider.lua"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "RemX (temporary)",
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/Henry887/RemX-Script-Hub/main/main.lua'),true))()
   end,
})

local Tab = Window:CreateTab("Auto", nil)
local Section = Tab:CreateSection("Spider")
local Button = Tab:CreateButton({
   Name = "Auto Win (NOT WORKING)",
   Callback = function()
    loadstring((game:HttpGet('https://raw.githubusercontent.com/BloxophiliA-FE/Universal-Roblox-GUI/main/Scripts/Autowinspider.lua'),true))()
   end,
})


