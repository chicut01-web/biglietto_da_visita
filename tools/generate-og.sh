#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$DIR/.." && pwd)"

echo "🎨 Generazione anteprima Open Graph..."

# 1. Screenshot ad alta risoluzione 1200x630
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  --headless=new \
  --screenshot="$ROOT/og.png" \
  --window-size=1200,630 \
  "file://$DIR/og-source.html" 2>/dev/null

# 2. Conversione in JPEG ottimizzato per WhatsApp (< 200 KB)
sips -s format jpeg -s formatOptions 88 "$ROOT/og.png" --out "$ROOT/og.jpg" >/dev/null

echo "✅ Immagini generate con successo:"
ls -lh "$ROOT/og.jpg" "$ROOT/og.png"
