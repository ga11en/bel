# Lessons — one mechanic a session

One idea. One Playtest. A challenge only if she still has gas. Between sessions I prep the next 15–30 lines with plain-English comments and one recoverable planted bug.

## Phase 1 — Builder first (Studio only, 1–2 sessions)

No code. Baseplate, Explorer, Move/Scale/Rotate, Color, Material, **Anchor**. Small house: floor, walls, roof, door hole. A `WelcomeMat` part and a `Pet` (Part, or simple Model with a PrimaryPart). Rename in Explorer so names match what scripts will use. Play: walk, jump, look at the house. Let her show someone.

- **She does:** everything
- **I do:** nothing but answer questions and point at the Anchor checkbox

## Phase 2 — First real code (1 session)

The moment: "the file we typed made Studio do that." Serve, connect, Output visible. `src/server/Hello.server.luau` already exists.

- **She types:** the `print("Hello, ...")` line and the three color numbers
- **I type:** everything else
- **Words used:** script, save, Play, Output

## Phase 3 — ClickDetector

Click the pet → color change / bounce / print a sound word.

- **She types:** what happens inside the click function
- **I type:** the ClickDetector lookup and `.MouseClick:Connect` plumbing

## Phase 4 — Touched

Welcome mat greets her; porch light turns on.

- **She types:** the greeting string, the light color/Brightness values
- **I type:** `Touched:Connect` and the Humanoid guard (she doesn't need why yet)

## Phase 5 — Variables + if

Pet `hunger`. Feeding lowers it, playing raises it, the pet reacts differently depending on the number.

- **She types:** starting value, the thresholds, what the pet says in each branch
- **I type:** the variable declaration and the if/elseif skeleton

## Phase 6 — Loops + wait

Blinking porch light or spinning toy.

- **She types:** the wait times and what changes each tick
- **I type:** the `while true do` frame

## Phase 7 — Functions

`feedPet()` called from a click and from a button. The idea: one recipe, called from two places.

- **She types:** the body of `feedPet`
- **I type:** the two call sites

## Phase 8 — Player

Pet faces or follows her. Crude `PivotTo` in a loop, not real AI.

- **She types:** follow distance and speed numbers
- **I type:** character lookup and the pivot math

## Phase 9 — Simple GUI

Pet name she picks, a Feed button.

- **She types:** the pet's name, button text, colors
- **I type:** GUI instance plumbing

## Phase 10 — Polish, don't publish

Sounds, particles, another room, a friend on the couch playing locally. Publishing and Game Passes are later. Not how she learns to code.

## Lookup convention

```lua
local pet = workspace:WaitForChild("Pet")
```

If she groups the house into a Model, change the path with her (`workspace.House.WelcomeMat`) so Explorer and code still match.

## First month, done if

She can build and rename parts, press Play, change a script, say "the script runs when I click the pet," and show someone a house with a pet that reacts.
