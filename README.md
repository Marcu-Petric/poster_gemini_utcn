# Gemini UTCN

[![Build Status](https://github.com/Marcu-Petric/poster_gemini_utcn/actions/workflows/ci.yml/badge.svg)](https://github.com/Marcu-Petric/poster_gemini_utcn/actions/workflows/ci.yml)

A UTCN/TUCN-flavored fork of [Gemini](https://github.com/anishathalye/gemini), the LaTeX beamerposter theme used and adapted by many universities.

This fork keeps the original Gemini structure and adds ready-to-use branding for the Technical University of Cluj-Napoca. It is meant to be a practical starting point for UTCN students, labs, and research groups who want a clean poster template without rebuilding the theme from scratch.

## Themes

### `utcn`

Dark header theme using the UTCN red/black palette.

![UTCN dark theme preview](assets/previews/utcn-dark.png)

### `utcnlight`

Light header theme for logos that work best on white backgrounds.

![UTCN light theme preview](assets/previews/utcn-light.png)

The UTCN theme files live in `colorthemes/`:

- `beamercolorthemeutcn.sty`
- `beamercolorthemeutcnlight.sty`

## Usage

Edit `poster.tex` and choose a color theme:

```tex
\usecolortheme{utcn}
```

or:

```tex
\usecolortheme{utcnlight}
```

Add a logo if you want one in the header:

```tex
\logoleft{\includegraphics[height=6.0cm]{assets/logos/UTCN-DbFHkV7H.png}}
```

Build the poster with:

```bash
latexmk -pdflatex="lualatex -interaction nonstopmode" -pdf poster.tex
```

You can also compile directly with LuaLaTeX:

```bash
lualatex -interaction=nonstopmode poster.tex
```

## Requirements

- A TeX distribution with LuaLaTeX, such as MiKTeX or TeX Live
- `latexmk` for the default build workflow
- Perl if your TeX distribution requires it for `latexmk`

## Customizing

Gemini themes are simple `.sty` files. To make another UTCN variant, copy one of the existing UTCN themes from `colorthemes/`, rename it, and adjust the colors.

For example:

```tex
\usecolortheme{myutcnvariant}
```

Contributions with new UTCN layouts, color variants, or cleaner logo setups are welcome.

## Upstream

This repository is based on [anishathalye/gemini](https://github.com/anishathalye/gemini). The original project is licensed under MIT and provides the base poster system used here.

## License

Released under the MIT License. See `LICENSE.md`.
