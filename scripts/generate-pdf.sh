#!/bin/bash
# Generate PDF from markdown and move to generated/ folder

set -e

if [ -z "$1" ]; then
  echo "Usage: ./scripts/generate-pdf.sh <path/to/file.md>"
  exit 1
fi

MD_FILE="$1"
PDF_FILE="${MD_FILE%.md}.pdf"
BASENAME=$(basename "$PDF_FILE")

# Generate PDF
npx md-to-pdf "$MD_FILE"

# Move to generated folder
mv "$PDF_FILE" "generated/$BASENAME"

echo "✅ Generated: generated/$BASENAME"
