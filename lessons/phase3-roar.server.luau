-- Phase 3: click the dragon.
-- New idea: a ClickDetector runs code when something is clicked.

local dragon = workspace:WaitForChild("Dragon")

-- Plumbing (Greg): give the dragon a ClickDetector if it doesn't have one.
local clicker = dragon:FindFirstChildOfClass("ClickDetector")
if not clicker then
	clicker = Instance.new("ClickDetector")
	clicker.Parent = dragon
end

clicker.MouseClick:Connect(function()
	-- BEL: what does your dragon say?
	print("ROAR!")

	-- BEL: pick the flash color
	dragon.Color = Color3.fromRGB(255, 80, 0)
	task.wait(0.3)
	-- BEL: pick the back-to-normal color
	dragon.Color = Color3.fromRGB(0, 170, 90)
end)
