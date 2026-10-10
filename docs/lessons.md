# Lessons — one mechanic a session

One idea. One Playtest. A challenge only if she still has gas. Between sessions I prep the next 15–30 lines with plain-English comments and one recoverable planted bug.

The theme is dragon rider + powerful dragon, but the mechanics are the same ones every game is made of. She's learning clicks, touches, variables, loops, and functions; the dragon is what makes her care.

## Phase 1 — Builder first (Studio only, 1–2 sessions)

No code. Baseplate, Explorer, Move/Scale/Rotate, Color, Material, **Anchor**. She builds a dragon lair: cave, tower, or whatever she imagines. A `Dragon` (Part to start, or a simple Model with a PrimaryPart), a `MagicRune` part on the ground where the rider's power awakens, and a `Torch`. Rename in Explorer so names match what scripts will use. Play: walk around the lair, meet the dragon. Let her show someone.

- **She does:** everything
- **I do:** nothing but answer questions and point at the Anchor checkbox

## Phase 2 — First real code (1 session)

The moment: "the file we typed made the dragon change." Serve, connect, Output visible. `src/server/Hello.server.luau` already exists.

- **She types:** the `print("Hello, ...")` line and the dragon's three color numbers
- **I type:** everything else
- **Words used:** script, save, Play, Output

## Phase 3 — ClickDetector

Click the dragon → it changes color / bounces / prints a ROAR.

- **She types:** what happens inside the click function
- **I type:** the ClickDetector lookup and `.MouseClick:Connect` plumbing

## Phase 4 — Touched

Step on the `MagicRune` → it glows and greets the rider; the `Torch` lights.

- **She types:** the greeting string, the glow color, Brightness values
- **I type:** `Touched:Connect` and the Humanoid guard (she doesn't need why yet)

## Phase 5 — Variables + if

The dragon's `firePower`. Resting raises it, casting spells drains it, and the dragon reacts differently depending on the number (sleepy / ready / unstoppable).

- **She types:** starting value, the thresholds, what the dragon says in each branch
- **I type:** the variable declaration and the if/elseif skeleton

## Phase 6 — Loops + wait

Flickering torch or a pulsing rune glow.

- **She types:** the wait times and what changes each tick
- **I type:** the `while true do` frame

## Phase 7 — Functions

`castSpell()` called from a click and from a button. The idea: one spell recipe, cast from two places.

- **She types:** the body of `castSpell`
- **I type:** the two call sites

## Phase 8 — Player

The dragon faces or follows its rider. Crude `PivotTo` in a loop, not real AI.

- **She types:** follow distance and speed numbers
- **I type:** character lookup and the pivot math

## Phase 9 — Simple GUI

The dragon's name (she picks it) and a Cast Spell button.

- **She types:** the dragon's name, button text, colors
- **I type:** GUI instance plumbing

## Phase 10 — Polish, don't publish

Fire-breath particles, sounds, a second cave, a friend on the couch playing locally. Publishing and Game Passes are later. Not how she learns to code.

## Lookup convention

```lua
local dragon = workspace:WaitForChild("Dragon")
```

If she groups the lair into a Model, change the path with her (`workspace.Lair.Torch`) so Explorer and code still match.

## First month, done if

She can build and rename parts, press Play, change a script, say "the script runs when I click the dragon," and show someone a lair with a dragon that reacts.
