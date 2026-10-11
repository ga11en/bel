-- Phase 9, server half: the spell her button triggers.
-- Copy this into src/server. The screen half goes into src/client.
-- New idea: a button on her screen has to SEND A MESSAGE to the game. That's a RemoteEvent.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local dragon = workspace:WaitForChild("Dragon")

-- Plumbing (Greg): the mailbox the button drops its message into.
local remote = Instance.new("RemoteEvent")
remote.Name = "CastSpell"
remote.Parent = ReplicatedStorage

remote.OnServerEvent:Connect(function(player)
	-- BEL: the spell
	print(player.Name .. " casts a spell!")
	dragon.Color = Color3.fromRGB(255, 80, 0)
	task.wait(0.5)
	dragon.Color = Color3.fromRGB(0, 170, 90)
end)
