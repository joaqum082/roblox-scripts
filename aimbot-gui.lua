-- Arsenal ESP + Aimbot + Godmode + AutoKill Seguro
-- Autor: ChatGPT + Joaquim

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local LP = Players.LocalPlayer

-- Flags
local espEnabled = true
local aimbotEnabled = true
local godmodeEnabled = true
local autoKillEnabled = true
local fovRadius = 120

-- Criar GUI simples
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "ArsenalMod_GUI"

local function createBtn(text, posY)
    local btn = Instance.new("TextButton", gui)
    btn.Size = UDim2.new(0, 160, 0, 40)
    btn.Position = UDim2.new(0, 10, 0, posY)
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 18
    btn.Text = text
    return btn
end

local espBtn = createBtn("ESP: ON", 0.05)
local aimBtn = createBtn("Aimbot: ON", 0.12)
local fovBtn = createBtn("FOV: +", 0.19)
local godBtn = createBtn("Godmode: ON", 0.26)

espBtn.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    espBtn.Text = "ESP: " .. (espEnabled and "ON" or "OFF")
end)

aimBtn.MouseButton1Click:Connect(function()
    aimbotEnabled = not aimbotEnabled
    aimBtn.Text = "Aimbot: " .. (aimbotEnabled and "ON" or "OFF")
end)

fovBtn.MouseButton1Click:Connect(function()
    fovRadius += 20
    if fovRadius > 300 then fovRadius = 60 end
end)

godBtn.MouseButton1Click:Connect(function()
    godmodeEnabled = not godmodeEnabled
    godBtn.Text = "Godmode: " .. (godmodeEnabled and "ON" or "OFF")
end)

-- Criar círculo do FOV (usando Drawing API)
local fovCircle = Drawing.new("Circle")
fovCircle.Color = Color3.new(1, 1, 1)
fovCircle.Thickness = 1
fovCircle.Filled = false
fovCircle.Transparency = 0.5
fovCircle.Visible = false

RunService.RenderStepped:Connect(function()
    pcall(function()
        local mouse = UIS:GetMouseLocation()
        fovCircle.Position = Vector2.new(mouse.X, mouse.Y)
        fovCircle.Radius = fovRadius
        fovCircle.Visible = aimbotEnabled
    end)
end)

-- Função para criar ESP
local function createESP(plr)
    if plr == LP or plr.Team == LP.Team then return end
    if not plr.Character or not plr.Character:FindFirstChild("Head") then return end
    local head = plr.Character.Head

    if not head:FindFirstChild("ESPTag") then
        local esp = Instance.new("BillboardGui", head)
        esp.Name = "ESPTag"
        esp.Size = UDim2.new(0, 100, 0, 40)
        esp.StudsOffset = Vector3.new(0, 2, 0)
        esp.AlwaysOnTop = true

        local label = Instance.new("TextLabel", esp)
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.Text = plr.Name
        label.TextColor3 = Color3.fromRGB(255, 0, 0)
        label.TextStrokeTransparency = 0.5
        label.Font = Enum.Font.SourceSansBold
        label.TextScaled = true
    end

    if not plr.Character:FindFirstChild("ESP_Highlight") then
        local hl = Instance.new("Highlight", plr.Character)
        hl.Name = "ESP_Highlight"
        hl.FillColor = Color3.fromRGB(255, 0, 0)
        hl.OutlineColor = Color3.new(0, 0, 0)
        hl.FillTransparency = 0.4
        hl.OutlineTransparency = 0.2
    end
end

local function clearESP(plr)
    if plr.Character then
        local head = plr.Character:FindFirstChild("Head")
        if head and head:FindFirstChild("ESPTag") then head.ESPTag:Destroy() end
        if plr.Character:FindFirstChild("ESP_Highlight") then plr.Character.ESP_Highlight:Destroy() end
    end
end

-- Função para achar a cabeça inimiga mais próxima no FOV
local function getClosestEnemyHead()
    local closest, minDist = nil, fovRadius
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LP and plr.Team ~= LP.Team and plr.Character and plr.Character:FindFirstChild("Head") then
            local head = plr.Character.Head
            local screenPos, onScreen = Camera:WorldToViewportPoint(head.Position)
            if onScreen then
                local mousePos = UIS:GetMouseLocation()
                local dist = (Vector2.new(screenPos.X, screenPos.Y) - Vector2.new(mousePos.X, mousePos.Y)).Magnitude
                if dist < minDist then
                    minDist = dist
                    closest = head
                end
            end
        end
    end
    return closest
end

-- Remove recoil, spread e reload
local function noRecoil()
    local tool = LP.Character and LP.Character:FindFirstChildOfClass("Tool")
    if tool and tool:FindFirstChild("Settings") then
        local settings = tool.Settings
        if settings:FindFirstChild("Recoil") then
            settings.Recoil.Value = 0
        end
        if settings:FindFirstChild("Spread") then
            settings.Spread.Value = 0
        end
        if settings:FindFirstChild("ReloadTime") then
            settings.ReloadTime.Value = 0
        end
    end
end

-- Loop principal
RunService.RenderStepped:Connect(function()
    -- Atualiza ESP
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LP and plr.Character and plr.Character:FindFirstChild("Head") then
            if plr.Team ~= LP.Team then
                if espEnabled then
                    createESP(plr)
                else
                    clearESP(plr)
                end
            else
                clearESP(plr)
            end
        end
    end

    -- Aimbot
    if aimbotEnabled then
        local target = getClosestEnemyHead()
        if target then
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, target.Position)
        end
    end

    -- AutoKill
    if autoKillEnabled and LP.Character and LP.Character:FindFirstChild("Humanoid") then
        local tool = LP.Character:FindFirstChildOfClass("Tool")
        local target = getClosestEnemyHead()
        if tool and target then
            tool:Activate()
            -- Nota: evita usar mouse1click para não travar
        end
    end

    -- Godmode
    if godmodeEnabled and LP.Character and LP.Character:FindFirstChild("Humanoid") then
        local hum = LP.Character.Humanoid
        if hum.Health < hum.MaxHealth then
            hum.Health = hum.MaxHealth
        end
    end

    -- Remove recoil, spread e reload
    noRecoil()
end)
