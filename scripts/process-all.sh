#!/bin/bash
# Process all images in images/ and write padded versions to images/processed/.
# Originals in images/ are never modified.
# Usage: bash scripts/process-all.sh

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IMAGES_DIR="$(cd "$SCRIPT_DIR/../images" && pwd)"
OUT_DIR="$IMAGES_DIR/processed"

mkdir -p "$OUT_DIR"

echo "🔄 Processing images"
echo "   Source:  $IMAGES_DIR"
echo "   Output:  $OUT_DIR"
echo ""

count=0
shopt -s nullglob
for file in "$IMAGES_DIR"/*.png "$IMAGES_DIR"/*.jpg "$IMAGES_DIR"/*.jpeg \
            "$IMAGES_DIR"/*.PNG "$IMAGES_DIR"/*.JPG "$IMAGES_DIR"/*.JPEG; do
    [ -e "$file" ] || continue

    filename=$(basename "$file")
    echo "  Processing: $filename"

    python3 "$SCRIPT_DIR/process-screenshots.py" "$file" "$OUT_DIR/$filename" 2>&1 | sed 's/^/    /'

    if [ ${PIPESTATUS[0]} -eq 0 ]; then
        ((count++))
    else
        echo "    ✗ Failed to process $filename"
    fi

    echo ""
done

echo "✅ Processed $count images -> $OUT_DIR"
