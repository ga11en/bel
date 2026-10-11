-- Phase 7: one spell, cast from two places.
-- New idea: a function, a recipe you write once and use anywhere.

local dragon = workspace:WaitForChild("Dragon")
local rune = workspace:WaitForChild("MagicRune")

local function castSpell()
	-- BEL: the whole spell goes in here. Sounds? Colors? Words?
	print("FIREBALL!")
	dragon.Color = Color3.fromRGB(255, 80, 0)
	task.wait(0.5)
	dragon.Color = Color3.fromRGB(0, 170, 90)
end

-- Call site 1 (Greg): click the dragon
local clicker = dragon:FindFirstChildOfClass("ClickDetector")
if not clicker then
	clicker = Instance.new("ClickDetector")
	clicker.Parent = dragon
end
clicker.MouseClick:Connect(castSpell)

-- Call site 2 (Greg): touch the rune
rune.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		castSpell()
	end
end)

-- The point to land: we changed the spell in ONE place and both triggers got it.
