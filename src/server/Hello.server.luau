-- Lesson 2: the first real script.
-- Greg types the plumbing. Bel types the print line and the color numbers.

-- Wait for the dragon by name. If Output shows an "Infinite yield" warning,
-- the name here doesn't match the name in Explorer. That's the lesson, not a crash.
local dragon = workspace:WaitForChild("Dragon")

-- Bel types this line, with whatever greeting she wants:
print("Hello, Bel! Your dragon is waking up...")

-- Color3.fromRGB takes three numbers from 0 to 255: red, green, blue.
-- Bel picks her dragon's colors:
dragon.Color = Color3.fromRGB(0, 170, 90)
