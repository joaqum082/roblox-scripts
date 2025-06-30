-- Aimbot GUI Seguro - Corrigido para Arsenal (por ChatGPT pro Joaquim)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

-- Variáveis de Configuração
local AimPart = "Head"
local Smoothness = 0.15
local FOVRadius = 100
local Aiming = false

-- GUI de Configuração (no PlayerGui para evitar tela branca)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AimbotGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame", ScreenGui)
Frame.Position = UDim2.new(0, 20, 0, 100)
Frame.Size = UDim2.new(0, 220, 0, 220)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BackgroundTransparency = 0.2
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true

local function addButton(text, posY, callback)
    local button = Instance.new("TextButton", Frame)
    button.Size = UDim2.new(0, 200, 0, 30)
    button.Position = UDim2.new(0, 10, 0, posY)
    button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.Gotham
    button.TextSize = 14
    button.Text = text
    button.MouseButton1Click:Connect(callback)
end

addButton("Ativar/Desativar Aimbot (Q)", 10, function()
    Aiming = not Aiming
end)

addButton("Trocar Parte: Head/Torso", 45, function()
    AimPart = (AimPart == "Head") and "Torso" or "Head"
end)

addButton("+ FOV", 80, function()
    FOVRadius = FOVRadius + 10
end)

addButton("- FOV", 115, function()
    FOVRadius = math.max(10, FOVRadius - 10)
end)

addButton("+ Suavidade", 150, function()
    Smoothness = math.min(1, Smoothness + 0.05)
end)

addButton("- Suavidade", 185, function()
    Smoothness = math.max(0.01, Smoothness - 0.05)
end)

-- Circulo FOV com Drawing
local success, FOVCircle = pcall(function()
    local circle = Drawing.new("Circle")
    circle.Thickness = 1
    circle.Filled = false
    circle.Transparency = 0.5
    circle.Color = Color3.fromRGB(0, 255, 0)
    circle.Radius = FOVRadius
    circle.Visible = true
    return circle
end)

-- Função para encontrar alvo mais próximo
local function getClosestPlayer()
    local closest, shortest = nil, FOVRadius
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Team ~= LocalPlayer.Team and p.Character and p.Character:FindFirstChild(AimPart) then
            local pos, onScreen = Camera:WorldToViewportPoint(p.Character[AimPart].Position)
            if onScreen then
                local dist = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                if dist < shortest then
                    closest = p
                    shortest = dist
                end
            end
        end
    end
    return closest
end

-- Atalho Q para ativar/desativar
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Q then
        Aiming = not Aiming
    end
end)

-- Loop principal
RunService.RenderStepped:Connect(function()
    pcall(function()
        if FOVCircle then
            FOVCircle.Position = Vector2.new(Mouse.X, Mouse.Y)
            FOVCircle.Radius = FOVRadius
        end

        if Aiming then
            local target = getClosestPlayer()
            if target and target.Character and target.Character:FindFirstChild(AimPart) then
                local pos = target.Character[AimPart].Position
                local newCFrame = CFrame.new(Camera.CFrame.Position, pos)
                Camera.CFrame = Camera.CFrame:Lerp(newCFrame, Smoothness)
            end
        end
    end)
end)
