# Gemini UTCN — Overleaf bundle

This ZIP is a minimal copy of the poster template: main file, theme files, bibliography, and logos. You do not need to clone the full repository.

## Quick steps (Overleaf)

1. On GitHub, open **Releases** for this repository and download **overleaf-template.zip**.
2. In Overleaf: **New Project** → **Upload Project** → select the ZIP.
3. Open the project **Menu** (top left) → **Compiler** → choose **LuaLaTeX**.
4. Click **Recompile**.

The main file is `poster.tex`. It uses the `utcn` color theme and a sample logo under `assets/logos/`.

## Switching themes

In `poster.tex`, change:

```tex
\usecolortheme{utcn}
```

to:

```tex
\usecolortheme{utcnlight}
```

For `utcnlight`, use a logo that looks good on a white header (for example `assets/logos/UTCN-DbFHkV7H.png` in `\logoleft{...}`).

## Files in this bundle

- `poster.tex` — start here
- `poster.bib` — references
- `beamerthemegemini.sty` — Gemini layout
- `beamercolortheme*.sty` — color themes (including `utcn` and `utcnlight`)
- `assets/logos/` — sample logos (replace with your own if needed)

Theme files are placed in the project root so Overleaf finds them without extra path configuration.

## License

See `LICENSE.md` (MIT, same as upstream Gemini).
