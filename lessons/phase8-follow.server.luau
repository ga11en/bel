-- Phase 8: the dragon follows its rider.
-- New idea: the game knows where the player is, and code can chase it.
-- (Keep the Dragon ANCHORED. PivotTo moves it anyway, and physics stays calm.)

local Players = game:GetService("Players")
local dragon = workspace:WaitForChild("Dragon")

-- BEL: how close does the dragon get, and how fast does it move?
local FOLLOW_DISTANCE = 8
local SPEED = 0.05

while true do
	task.wait(0.03)
	local player = Players:GetPlayers()[1]
	if player and player.Character and player.Character.PrimaryPart then
		local target = player.Character.PrimaryPart.Position
		local current = dragon.Position
		local offset = target - current
		if offset.Magnitude > FOLLOW_DISTANCE then
			local newPos = current + offset * SPEED
			-- Face the rider while gliding toward her:
			dragon:PivotTo(CFrame.new(newPos, Vector3.new(target.X, newPos.Y, target.Z)))
		end
	end
end
