#!/usr/bin/env bash
# Build dist/overleaf-template.zip for Overleaf (minimal file set, flat theme .sty in project root).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
STAGE="${ROOT}/dist/overleaf-template"
OUT_ZIP="${ROOT}/dist/overleaf-template.zip"

rm -rf "${STAGE}" "${OUT_ZIP}"
mkdir -p "${STAGE}/assets/logos"

cp "${ROOT}/overleaf/poster.tex" "${STAGE}/poster.tex"
cp "${ROOT}/poster.bib" "${STAGE}/"
cp "${ROOT}/beamerthemegemini.sty" "${STAGE}/"
# shellcheck disable=SC2086
cp ${ROOT}/colorthemes/beamercolortheme*.sty "${STAGE}/"
if [ -f "${ROOT}/LICENSE.md" ]; then
  cp "${ROOT}/LICENSE.md" "${STAGE}/"
fi
cp "${ROOT}/overleaf/README-OVERLEAF.md" "${STAGE}/README.md"

if [ -d "${ROOT}/assets/logos" ]; then
  cp -r "${ROOT}/assets/logos/"* "${STAGE}/assets/logos/"
fi

mkdir -p "${ROOT}/dist"
( cd "${ROOT}/dist" && zip -r overleaf-template.zip overleaf-template )

echo "Wrote ${OUT_ZIP}"
