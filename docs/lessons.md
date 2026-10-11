# Lessons — one mechanic a session

One idea. One Playtest. A challenge only if she still has gas. Between sessions I prep the next 15–30 lines with plain-English comments and one recoverable planted bug.

The theme is dragon rider + powerful dragon, but the mechanics are the same ones every game is made of. She's learning clicks, touches, variables, loops, and functions; the dragon is what makes her care.

## How lesson files flow

Every phase's starter script already exists in `lessons/`, with Bel's lines marked `-- BEL:` and everything else labeled plumbing. When a phase starts, copy its file into `src/server` (Phase 9's screen half goes into `src/client`) and Rojo syncs it in. **One active lesson script at a time**: when a new one arrives, fold the previous behavior forward or retire it with her deciding what survives — never leave two scripts bound to the same click or touch.

## Phase 1 — Builder first (Studio only, 1–2 sessions)

No code. Baseplate, Explorer, Move/Scale/Rotate, Color, Material, **Anchor**. She builds a dragon lair: cave, tower, or whatever she imagines. A `Dragon` (Part to start, or a simple Model with a PrimaryPart), a `MagicRune` part on the ground where the rider's power awakens, and a `Torch`. Rename in Explorer so names match what scripts will use. Play: walk around the lair, meet the dragon. Let her show someone.

- **She does:** everything
- **I do:** nothing but answer questions and point at the Anchor checkbox

## Phase 2 — First real code (1 session)

The moment: "the file we typed made the dragon change." Serve, connect, Output visible. `src/server/Hello.server.luau` already exists.

- **She types:** the `print("Hello, ...")` line and the dragon's three color numbers
- **I type:** everything else
- **Words used:** script, save, Play, Output

## Phase 3 — ClickDetector (`lessons/phase3-roar.server.luau`)

Click the dragon → it roars and flashes.

- **She types:** what happens inside the click function
- **I type:** the ClickDetector lookup and `.MouseClick:Connect` plumbing

## Phase 4 — Touched (`lessons/phase4-magic-rune.server.luau`)

Step on the `MagicRune` → it glows and greets the rider; the `Torch` lights.

- **She types:** the greeting string, the glow colors
- **I type:** `Touched:Connect` and the Humanoid guard (she doesn't need why yet)

## Phase 5 — Variables + if (`lessons/phase5-firepower.server.luau`)

The dragon's `firePower`. Resting on the rune raises it, breathing fire drains it, and the dragon reacts differently by the number (sleepy / ready / unstoppable). Touched fires many times while she stands on the rune; let her notice the number exploding and fix it together. That's the session's real lesson.

- **She types:** starting value, the thresholds, what the dragon says in each branch
- **I type:** the variable declaration and the if/elseif skeleton

## Phase 6 — Loops + wait (`lessons/phase6-flicker.server.luau`)

Flickering torch.

- **She types:** the wait times and the two colors
- **I type:** the `while true do` frame (and both waits stay, always)

## Phase 7 — Functions (`lessons/phase7-castspell.server.luau`)

`castSpell()` called from a click and from the rune. One spell recipe, cast from two places; change it once, both triggers get it.

- **She types:** the body of `castSpell`
- **I type:** the two call sites

## Phase 8 — Player (`lessons/phase8-follow.server.luau`)

The dragon faces and follows its rider. Crude `PivotTo` in a loop, not real AI. Keep the Dragon anchored; PivotTo moves it anyway and physics stays calm.

- **She types:** follow distance and speed numbers
- **I type:** character lookup and the pivot math

## Phase 9 — Simple GUI (`lessons/phase9-spell-server.server.luau` + `phase9-spell-button.client.luau`)

The dragon's name on screen (she picks it) and a Cast Spell button. Two halves: the button on her screen and the spell in the game, talking through a RemoteEvent ("the mailbox").

- **She types:** the dragon's name, button text, colors, the spell
- **I type:** GUI instance plumbing and the RemoteEvent

## Phase 10 — Polish, don't publish

Fire-breath particles, sounds, a second cave, a friend on the couch playing locally. Publishing and Game Passes are later. Not how she learns to code.

## Lookup convention

```lua
local dragon = workspace:WaitForChild("Dragon")
```

If she groups the lair into a Model, change the path with her (`workspace.Lair.Torch`) so Explorer and code still match. If `Dragon` becomes a Model, it gets a PrimaryPart, and the color script changes to loop over its parts — with her watching.

## First month, done if

She can build and rename parts, press Play, change a script, say "the script runs when I click the dragon," and show someone a lair with a dragon that reacts.
