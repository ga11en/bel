# Instructions for AI assistants working in this repo

This repo is a parent-run coding curriculum for an eight-year-old ("Bel"). The audience for every lesson script is a child reading over her dad's shoulder. These rules are not style preferences; they are the product.

## When prepping or editing a lesson script

- 15–30 lines. One new concept per script, named in the header comment in plain English.
- Comments in plain English, no jargon. Allowed vocabulary at the desk: script, save, Play, Output. Words like variable, function, loop, event only appear after she's used the thing repeatedly.
- Mark every line Bel types or edits with a `-- BEL:` comment directly above it. Everything unmarked is plumbing Greg types.
- Fixed names scripts rely on: `Dragon`, `MagicRune`, `Torch` in Workspace. Never rename these in code without being asked.
- `workspace:WaitForChild("Name")` is the lookup convention. No service-location cleverness, no CollectionService, no OOP patterns.
- One active lesson script in `src/server` at a time. New lessons either fold the previous behavior forward or retire it; never leave two scripts bound to the same click or touch.
- Never write a `while true do` loop without a `task.wait` inside it.

## Rojo rules (non-negotiable)

- `default.project.json` maps ONLY `src/server`, `src/shared`, `src/client`. Never add `$path` for Workspace, Lighting, or Terrain. Her built world lives in the Studio place file, and a Rojo sync must never be able to touch it.
- Place files (`*.rbxl`) stay out of git.

## Planted bugs

Only on request, one per lesson, and only bugs recoverable in under two minutes with the Output window: a misspelled part name, a flipped minus sign, a wrong color number, a forgotten Anchor. Never: broken Rojo config, missing waits in loops, anything that freezes or disconnects Studio.

## Tone

Lessons are invitations, not exercises. Prefer "what does your dragon say?" over "set the string value."
