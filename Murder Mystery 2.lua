local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "TIEOG Hub",
    LoadingTitle = "TIEOG MM2 Hub",
    LoadingSubtitle = "by xen",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = TIEOGHub, -- Create a custom folder for your hub/game
       FileName = "MM2"
    },
    Discord = {
       Enabled = true,
       Invite = "4uDWMXzm4d", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local VisualTab = Window:CreateTab("Visual", 4483362458) -- Title, Image

 local Button = VisualTab:CreateButton({
    Name = "ESP",
    Callback = function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/ypSsQRK6'),true))()
    end,
 })

 local Toggle = VisualTab:CreateToggle({
   Name = "Fullbright",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      if not _G.FullBrightExecuted then

         _G.FullBrightEnabled = false
      
         _G.NormalLightingSettings = {
            Brightness = game:GetService("Lighting").Brightness,
            ClockTime = game:GetService("Lighting").ClockTime,
            FogEnd = game:GetService("Lighting").FogEnd,
            GlobalShadows = game:GetService("Lighting").GlobalShadows,
            Ambient = game:GetService("Lighting").Ambient
         }
      
         game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
            if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
               _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
               if not _G.FullBrightEnabled then
                  repeat
                     wait()
                  until _G.FullBrightEnabled
               end
               game:GetService("Lighting").Brightness = 1
            end
         end)
      
         game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
            if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
               _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
               if not _G.FullBrightEnabled then
                  repeat
                     wait()
                  until _G.FullBrightEnabled
               end
               game:GetService("Lighting").ClockTime = 12
            end
         end)
      
         game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
            if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
               _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
               if not _G.FullBrightEnabled then
                  repeat
                     wait()
                  until _G.FullBrightEnabled
               end
               game:GetService("Lighting").FogEnd = 786543
            end
         end)
      
         game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
            if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
               _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
               if not _G.FullBrightEnabled then
                  repeat
                     wait()
                  until _G.FullBrightEnabled
               end
               game:GetService("Lighting").GlobalShadows = false
            end
         end)
      
         game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
               _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
               if not _G.FullBrightEnabled then
                  repeat
                     wait()
                  until _G.FullBrightEnabled
               end
               game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            end
         end)
      
         game:GetService("Lighting").Brightness = 1
         game:GetService("Lighting").ClockTime = 12
         game:GetService("Lighting").FogEnd = 786543
         game:GetService("Lighting").GlobalShadows = false
         game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
      
         local LatestValue = true
         spawn(function()
            repeat
               wait()
            until _G.FullBrightEnabled
            while wait() do
               if _G.FullBrightEnabled ~= LatestValue then
                  if not _G.FullBrightEnabled then
                     game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                     game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                     game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                     game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                     game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                  else
                     game:GetService("Lighting").Brightness = 1
                     game:GetService("Lighting").ClockTime = 12
                     game:GetService("Lighting").FogEnd = 786543
                     game:GetService("Lighting").GlobalShadows = false
                     game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                  end
                  LatestValue = not LatestValue
               end
            end
         end)
      end
      
      _G.FullBrightExecuted = true
      _G.FullBrightEnabled = not _G.FullBrightEnabled
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

 local UniversalTab = Window:CreateTab("Universal", 4483362458) -- Title, Image

 local Toggle = UniversalTab:CreateToggle({
   Name = "God Mode",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Button = UniversalTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   -- The function that takes place when the button is pressed
   end,
})

local Toggle = UniversalTab:CreateToggle({
   Name = "Click Teleport",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Click%20Teleport.txt"))()
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = UniversalTab:CreateToggle({
   Name = "Click Teleport",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Click%20Teleport.txt"))()
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Label = VisualTab:CreateLabel("Use X-Ray to see the dropped gun")
