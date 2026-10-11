# PARENT.md — my setup and session notes

Dragon rider with magical powers + a powerful dragon. Bel builds the lair and the dragon; this repo holds the scripts; Rojo syncs them. Nothing here is for her to read.

## One-time setup (before she ever sits down)

1. **Her account.** Her Roblox account with her real birthdate, mine linked as parent. Parental Controls: chat off or locked down, spend limits set, screen time set. Game stays unpublished/private. No real name anywhere in the game.
2. **Install.** Roblox Studio from create.roblox.com. Rojo CLI (Rokit, or rojo.space install docs). Rojo plugin inside Studio (Plugins → Manage, or from the Rojo docs).
3. **Dry-run Phase 2 alone.** Full cycle once, solo: `rojo serve` → Studio → Connect → edit `Hello.server.luau` → watch it sync → Play. The "magic moment" session cannot be the first time the toolchain runs.
4. **Backups dir:** `mkdir -p ~/Backups/bel-roblox`
5. **The one hard rule:** Rojo never maps Workspace, Lighting, or Terrain. `default.project.json` only touches ServerScriptService, ReplicatedStorage, and StarterPlayerScripts. Her lair lives in the Studio place file, period. A reconnect must never be able to touch it.

## Every session, same start

1. `cd ~/dev/bel && rojo serve`
2. Open her place file in Studio
3. Rojo plugin → **Connect** (confirm it says connected before she starts)
4. View → Output window visible
5. She builds / we edit a script → **Play**

End on Play. Always. Quit while she wants one more thing. 25–40 minutes.

## The two errors she'll actually see, translated

- `attempt to index nil with ...` → "The name in the script doesn't match a name in Explorer." Fix: compare the string in the script to the name in Explorer, character for character.
- `Infinite yield possible on WaitForChild("Dragon")` → same thing: nothing in Workspace is named `Dragon`. Not a crash; the script is waiting politely for something that doesn't exist.

Say the translation, not the error. Ask "what do you think the computer is looking for?"

## Planted bugs

One per session max, only when she's got energy left, and only from this menu — each recoverable in under two minutes with the Output window open:

- A misspelled part name in `WaitForChild` (pairs with the infinite-yield translation above)
- A flipped minus sign (dragon sinks instead of rises, color goes the wrong way)
- A wrong color number (255 where 25 belongs)
- A forgotten Anchor (something falls through the world on Play)

Never plant: Rojo/connection problems (those are mine, not hers), a loop missing its `task.wait` (freezes Studio), anything touching her built world.

## Fixed names scripts rely on

`Dragon`, `MagicRune`, `Torch`. She names the world, the lair, and anything else whatever she wants; these three keep these exact names. If she groups the lair into a Model, we update the path together so Explorer and code still match. If `Dragon` becomes a Model, it gets a PrimaryPart and the color/pivot scripts change with her watching.

## Backup ritual (end of every session)

The Workspace rule protects the lair from Rojo. Nothing protects it from a Studio crash or an accidental delete except this:

1. She saves in Studio (`DragonLair.rbxl`)
2. `scripts/backup.sh ~/path/to/DragonLair.rbxl` — copies it, dated, into `~/Backups/bel-roblox/`

Thirty seconds. The dragon and the lair are the things she cares about most; treat them like it.

## Lesson prep between sessions

Starter scripts for every phase live in `lessons/`, Bel's lines marked `-- BEL:`. Copy the active one into `src/server` (Phase 9's screen half into `src/client`) when its session starts. One active lesson script at a time; fold old behavior forward or retire it with her. AI assistants editing this repo follow `AGENTS.md`.

## Words I use at the desk

script, save, Play, Output. Not: conditional, variable, event, sync, repo — until she's used the thing ten times and asks what it's called.

## What I skip until she asks

Wally, Selene, StyLua, Git in front of her, Team Create, publishing, Game Passes.
