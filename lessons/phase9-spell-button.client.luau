-- Phase 9, screen half: the dragon's name and a Cast Spell button.
-- Copy this into src/client. Needs the server half running too.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local remote = ReplicatedStorage:WaitForChild("CastSpell")

local gui = Instance.new("ScreenGui")
gui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

local nameLabel = Instance.new("TextLabel")
-- BEL: your dragon's name!
nameLabel.Text = "Ember"
nameLabel.Size = UDim2.fromScale(0.2, 0.08)
nameLabel.Position = UDim2.fromScale(0.02, 0.05)
nameLabel.Parent = gui

local button = Instance.new("TextButton")
-- BEL: what the button says, and its colors
button.Text = "Cast Spell"
button.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Size = UDim2.fromScale(0.2, 0.08)
button.Position = UDim2.fromScale(0.02, 0.15)
button.Parent = gui

button.MouseButton1Click:Connect(function()
	remote:FireServer()
end)
