-- Lesson 2: the first real script.
-- Greg types the plumbing. Bel types the print line and the color numbers.

-- Wait for the pet by name. If Output shows an "Infinite yield" warning,
-- the name here doesn't match the name in Explorer. That's the lesson, not a crash.
local pet = workspace:WaitForChild("Pet")

-- Bel types this line, with whatever greeting she wants:
print("Hello, Bel!")

-- Color3.fromRGB takes three numbers from 0 to 255: red, green, blue.
-- Bel picks the numbers:
pet.Color = Color3.fromRGB(255, 105, 180)
