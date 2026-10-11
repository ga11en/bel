-- Phase 6: the torch flickers forever.
-- New idea: a loop, code that repeats on its own.

local torch = workspace:WaitForChild("Torch")
torch.Material = Enum.Material.Neon

while true do
	-- BEL: the bright color
	torch.Color = Color3.fromRGB(255, 200, 0)
	-- BEL: how long does it stay bright?
	task.wait(0.4)

	-- BEL: the dim color
	torch.Color = Color3.fromRGB(120, 60, 0)
	-- BEL: how long does it stay dim?
	task.wait(0.2)
end

-- (Greg: never remove both waits. A while-true loop with no wait freezes Studio.)
