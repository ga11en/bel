# PARENT.md — my setup and session notes

Dragon rider with magical powers + a powerful dragon. Bel builds the lair and the dragon; this repo holds the scripts; Rojo syncs them. Nothing here is for her to read.

## One-time setup (before she ever sits down)

1. **Her account.** Her Roblox account with her real birthdate, mine linked as parent. Parental Controls: chat off or locked down, spend limits set, screen time set. Game stays unpublished/private. No real name anywhere in the game.
2. **Install.** Roblox Studio from create.roblox.com. Rojo CLI (Rokit, or rojo.space install docs). Rojo plugin inside Studio (Plugins → Manage, or from the Rojo docs).
3. **Dry-run Phase 2 alone.** Full cycle once, solo: `rojo serve` → Studio → Connect → edit `Hello.server.luau` → watch it sync → Play. The "magic moment" session cannot be the first time the toolchain runs.
4. **The one hard rule:** Rojo never maps Workspace, Lighting, or Terrain. `default.project.json` only touches ServerScriptService, ReplicatedStorage, and StarterPlayerScripts. Her lair lives in the Studio place file, period. A reconnect must never be able to touch it.

## Every session, same start

1. `cd ~/dev/bel && rojo serve`
2. Open her place file in Studio
3. Rojo plugin → **Connect** (confirm it says connected before she starts)
4. View → Output window visible
5. She builds / we edit a script → **Play**

End on Play. Always. Quit while she wants one more thing.

25–40 minutes. One planted bug per session max, and only ones recoverable in under two minutes (wrong part name: yes; plugin connection issues: no, those are mine).

## The two errors she'll actually see, translated

- `attempt to index nil with ...` → "The name in the script doesn't match a name in Explorer." Fix: compare the string in the script to the name in Explorer, character for character.
- `Infinite yield possible on WaitForChild("Dragon")` → same thing: nothing in Workspace is named `Dragon`. Not a crash; the script is waiting politely for something that doesn't exist.

Say the translation, not the error. Ask "what do you think the computer is looking for?"

## Fixed names scripts rely on

`Dragon`, `MagicRune`, `Torch`. She names the world, the lair, and anything else whatever she wants; these three keep these exact names. If she groups the lair into a Model, we update the path together so Explorer and code still match. If `Dragon` becomes a Model, it gets a PrimaryPart and the color/pivot scripts change with her watching.

## Backup ritual (end of every session)

The Workspace rule protects the lair from Rojo. Nothing protects it from a Studio crash or an accidental delete except this:

1. She saves in Studio (`DragonLair.rbxl`)
2. I copy it with a date: `cp ~/path/to/DragonLair.rbxl ~/Backups/bel-roblox/DragonLair-$(date +%F).rbxl`

Thirty seconds. The dragon and the lair are the things she cares about most; treat them like it.

## Words I use at the desk

script, save, Play, Output. Not: conditional, variable, event, sync, repo — until she's used the thing ten times and asks what it's called.

## What I skip until she asks

Wally, Selene, StyLua, Git in front of her, Team Create, publishing, Game Passes.
