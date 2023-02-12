local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Owner Only Script GUI", "Sentinel")

-- Acces Priavte og Puplic Versons of the GUI
local Acces_Priavte_og_Puplic_Versons_of_the_GUI = Window:NewTab("Priavte og Puplic")
local Acces_Priavte_og_Puplic_Versons_of_the_GUISection = Acces_Priavte_og_Puplic_Versons_of_the_GUI:NewSection("Acces Priavte og Puplic Versons of the GUI")


Acces_Priavte_og_Puplic_Versons_of_the_GUISection:NewButton("Acces to the private GUI", "ButtonInfo", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/H3hHN0vL'))()
end)

Acces_Priavte_og_Puplic_Versons_of_the_GUISection:NewButton("Acces to Puplic GUI", "ButtonInfo", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/e47JL4ak'))()
end)

-- Local Player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "You can chuse how fast you want to go", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "You can chuse how Hith You want to Go", 350, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset W/J", "Resets The W/J to default", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

PlayerSection:NewButton("Infinite Jump", "Makes you Able to Jump INFINITLY!!!", function()
    local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
    if InfiniteJumpEnabled then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
end)
end)

PlayerSection:NewButton("Noclip / When on Press e to enable or disable", "Makes you Able to Walk Frue Walls", function()
    local StealthMode = true 

local Indicator

if not StealthMode then
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    Indicator = Instance.new("TextLabel", ScreenGui)
    Indicator.AnchorPoint = Vector2.new(0, 1)
    Indicator.Position = UDim2.new(0, 0, 1, 0)
    Indicator.Size = UDim2.new(0, 200, 0, 50)
    Indicator.BackgroundTransparency = 1
    Indicator.TextScaled = true
    Indicator.TextStrokeTransparency = 0
    Indicator.TextColor3 = Color3.new(0, 0, 0)
    Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
    Indicator.Text = "Noclip: Enabled"
end

local noclip = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local mouse = player:GetMouse()

mouse.KeyDown:Connect(function(key)
    if key == "e" then
        noclip = not noclip

        if not StealthMode then
            Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
        end
    end
end)

while true do
    player = game.Players.LocalPlayer
    character = player.Character

    if noclip then
        for _, v in pairs(character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
    end

    game:GetService("RunService").Stepped:wait()
end
end)

-- Other
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("infinite Yield", "Command Panel", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

-- Scripts
local Scripts = Window:NewTab("Scripts")
local ScriptsSection = Scripts:NewSection("Scripts")

ScriptsSection:NewButton("Piggy Vynixius", "Opens a Script GUI for Piggy", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Loader.lua"))()
end)

ScriptsSection:NewButton("Flee The Facility", "Opens a Script GUI for FTF", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NexIsHot/Lunar/main/FTF.lua",true))()    
end)

ScriptsSection:NewButton("Flee The Facility", "Opens a Script GUI for FTF", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/SpaceHubLoader"))()
end)

ScriptsSection:NewButton("Doors", "Script By Vynixu", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
end)

ScriptsSection:NewButton("Doors Multiple GUIS", "Entity Spawner", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))()
end)

ScriptsSection:NewButton("Doors Multiple GUIS X2", "Entity Spawner", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
end)

ScriptsSection:NewButton("Murder Party Script", "Entity Spawner", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/artas01/artas01/c50dad68804d1656a15f5357f9333daa4a4f15af/MurderParty_bylolProplayerlol'))()
end)