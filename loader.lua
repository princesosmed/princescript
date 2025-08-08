-- GUI Script dengan drag + minimize + close
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local AdminButton = Instance.new("TextButton")
local KomplekButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local MinButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Name = "ScriptHubUI"
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 240, 0, 180)
Frame.Position = UDim2.new(0, 20, 0, 200)
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.Active = true
Frame.Draggable = true
UICorner.Parent = Frame

-- Tombol Admin Menu
AdminButton.Parent = Frame
AdminButton.Size = UDim2.new(0, 200, 0, 40)
AdminButton.Position = UDim2.new(0, 20, 0, 40)
AdminButton.Text = "Buka Admin Menu"
AdminButton.BackgroundColor3 = Color3.fromRGB(52, 152, 219)
AdminButton.TextColor3 = Color3.new(1, 1, 1)
AdminButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

-- Tombol Komplek Indo
KomplekButton.Parent = Frame
KomplekButton.Size = UDim2.new(0, 200, 0, 40)
KomplekButton.Position = UDim2.new(0, 20, 0, 90)
KomplekButton.Text = "Aktifkan Komplek Indo"
KomplekButton.BackgroundColor3 = Color3.fromRGB(46, 204, 113)
KomplekButton.TextColor3 = Color3.new(1, 1, 1)
KomplekButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/numerouno2/eugunewuhub/refs/heads/main/eugunewustd.lua"))()
end)

-- Tombol Close
CloseButton.Parent = Frame
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.Text = "X"
CloseButton.BackgroundColor3 = Color3.fromRGB(231, 76, 60)
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Tombol Minimize
MinButton.Parent = Frame
MinButton.Size = UDim2.new(0, 30, 0, 30)
MinButton.Position = UDim2.new(1, -70, 0, 5)
MinButton.Text = "-"
MinButton.BackgroundColor3 = Color3.fromRGB(241, 196, 15)
MinButton.TextColor3 = Color3.new(1, 1, 1)

local minimized = false
MinButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    AdminButton.Visible = not minimized
    KomplekButton.Visible = not minimized
    Frame.Size = minimized and UDim2.new(0, 240, 0, 40) or UDim2.new(0, 240, 0, 180)
end)
