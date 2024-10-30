-- SoloCheatPanel Message
-- By Jordan
-- Start the function

-- Get the required services
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

-- Get the local player
local player = Players.LocalPlayer

-- Create a new ScreenGui
local GUI = Instance.new("ScreenGui")
GUI.Parent = player:WaitForChild("PlayerGui")

-- Create the main frame
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 200, 0, 60)
MainFrame.Position = UDim2.new(0, -200, 0.95, -60) -- Start off-screen
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.Parent = GUI

-- Round the corners of the main frame
local MainFrameCorner = Instance.new("UICorner")
MainFrameCorner.CornerRadius = UDim.new(0, 10)
MainFrameCorner.Parent = MainFrame

-- Create the notification frame
local NotificationFrame = Instance.new("Frame")
NotificationFrame.Size = UDim2.new(0.9, 0, 0.8, 0)
NotificationFrame.Position = UDim2.new(0.05, 0, 0.1, 0)
NotificationFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Darker gray
NotificationFrame.Parent = MainFrame

-- Round the corners of the notification frame
local NotificationFrameCorner = Instance.new("UICorner")
NotificationFrameCorner.CornerRadius = UDim.new(0, 10)
NotificationFrameCorner.Parent = NotificationFrame

-- Create the text label with player name first
local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0.9, 0, 0.7, 0)
TextLabel.Position = UDim2.new(0.05, 0, 0.15, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextColor3 = Color3.fromRGB(255, 165, 0) -- Orange
TextLabel.TextScaled = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top
TextLabel.Text = "Welcome " .. player.Name .. "\nSoloCheatPanel loaded!"
TextLabel.Parent = NotificationFrame

-- Function to show the notification
local function ShowNotification()
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local endPosition = UDim2.new(0.01, 0, 0.95, -60)
    local tween = TweenService:Create(MainFrame, tweenInfo, { Position = endPosition })
    tween:Play()

    -- Hide the notification after 2.5 seconds
    task.wait(2.5)

    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
    local endPosition = UDim2.new(-1, 0, 0.95, -60)
    local tween = TweenService:Create(MainFrame, tweenInfo, { Position = endPosition })
    tween:Play()
end

-- Trigger the notification
ShowNotification()
