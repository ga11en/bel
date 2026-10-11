-- Phase 5: the dragon's fire power.
-- New ideas: a variable (a number the game remembers) and if/elseif (choosing).

local dragon = workspace:WaitForChild("Dragon")
local rune = workspace:WaitForChild("MagicRune")

-- BEL: how much fire power does the dragon start with?
local firePower = 5

local function describeDragon()
	-- BEL: the thresholds and what the dragon says at each one
	if firePower <= 2 then
		print("The dragon is sleepy... fire power:", firePower)
	elseif firePower <= 7 then
		print("The dragon is ready. Fire power:", firePower)
	else
		print("THE DRAGON IS UNSTOPPABLE! Fire power:", firePower)
	end
end

-- Clicking the dragon breathes fire (costs power)
local clicker = dragon:FindFirstChildOfClass("ClickDetector")
if not clicker then
	clicker = Instance.new("ClickDetector")
	clicker.Parent = dragon
end
clicker.MouseClick:Connect(function()
	firePower = firePower - 1
	describeDragon()
end)

-- Standing on the rune recharges (gains power).
-- (Touched fires MANY times while she stands there. Let her notice the number
-- exploding, ask why, and fix it together. That's the session's real lesson.)
rune.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		firePower = firePower + 1
		describeDragon()
	end
end)
