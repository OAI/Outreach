#!/bin/bash

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Error: pandoc is not installed" >&2
    exit 1
fi

# Check arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <source_format> <target_format> <source_filename>" >&2
    exit 1
fi

SOURCE_FORMAT="$1"
TARGET_FORMAT="$2"
SOURCE_FILE="$3"

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: Source file '$SOURCE_FILE' does not exist" >&2
    exit 1
fi

# Create build directory if it doesn't exist
mkdir -p build

# Get filename without path and extension
BASENAME=$(basename "$SOURCE_FILE" | sed 's/\.[^.]*$//')

# Determine output extension based on target format
case "$TARGET_FORMAT" in
    html) EXT="html" ;;
    pdf) EXT="pdf" ;;
    docx) EXT="docx" ;;
    markdown|md) EXT="md" ;;
    latex|tex) EXT="tex" ;;
    rst) EXT="rst" ;;
    epub) EXT="epub" ;;
    odt) EXT="odt" ;;
    *) EXT="$TARGET_FORMAT" ;;
esac

OUTPUT_FILE="build/${BASENAME}.${EXT}"

# Run pandoc
pandoc --from="$SOURCE_FORMAT" --to="$TARGET_FORMAT" --wrap=none "$SOURCE_FILE" -o "$OUTPUT_FILE"

if [ $? -eq 0 ]; then
    echo "Successfully converted '$SOURCE_FILE' to '$OUTPUT_FILE'"
else
    echo "Error: pandoc conversion failed" >&2
    exit 1
fi
