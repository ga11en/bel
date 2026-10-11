-- Phase 4: step on the magic rune to awaken your powers.
-- New idea: Touched runs code when something touches a part.

local rune = workspace:WaitForChild("MagicRune")
local torch = workspace:WaitForChild("Torch")

rune.Touched:Connect(function(hit)
	-- Plumbing (Greg): only react to a player, not the dragon or a falling brick.
	local humanoid = hit.Parent:FindFirstChild("Humanoid")
	if humanoid then
		-- BEL: what does the rune say to its rider?
		print("The rider has awakened!")

		-- BEL: pick the rune's glow color
		rune.Material = Enum.Material.Neon
		rune.Color = Color3.fromRGB(170, 0, 255)

		-- BEL: pick the torch flame color
		torch.Material = Enum.Material.Neon
		torch.Color = Color3.fromRGB(255, 170, 0)
	end
end)
