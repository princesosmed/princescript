-- GUI Pilih Script (Admin Menu & Komplek Indo)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Name = "ScriptHubUI"
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 220, 0, 140)
Frame.Position = UDim2.new(0, 10, 0, 200)
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
UICorner.Parent = Frame

-- Tombol Admin Menu
Button1.Parent = Frame
Button1.Size = UDim2.new(0, 200, 0, 50)
Button1.Position = UDim2.new(0, 10, 0, 10)
Button1.Text = "Buka Admin Menu"
Button1.BackgroundColor3 = Color3.fromRGB(52, 152, 219)
Button1.TextColor3 = Color3.new(1, 1, 1)
Button1.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

-- Tombol Komplek Indo
Button2.Parent = Frame
Button2.Size = UDim2.new(0, 200, 0, 50)
Button2.Position = UDim2.new(0, 10, 0, 75)
Button2.Text = "Aktifkan Komplek Indo"
Button2.BackgroundColor3 = Color3.fromRGB(46, 204, 113)
Button2.TextColor3 = Color3.new(1, 1, 1)
Button2.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/numerouno2/eugunewuhub/refs/heads/main/eugunewustd.lua"))()
end)
