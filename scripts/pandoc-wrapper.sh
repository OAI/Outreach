#!/bin/bash

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Error: pandoc is not installed" >&2
    exit 1
fi

# Check arguments
STDOUT=false
if [ "$3" = "--stdout" ]; then
    STDOUT=true
fi

if [ $# -lt 2 ] || [ $# -gt 3 ] || { [ $# -eq 3 ] && [ "$3" != "--stdout" ]; }; then
    echo "Usage: $0 <source_filename> <target_format> [--stdout]" >&2
    exit 1
fi

SOURCE_FILE="$1"
TARGET_FORMAT="$2"

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: Source file '$SOURCE_FILE' does not exist" >&2
    exit 1
fi

if [ "$STDOUT" = true ]; then
    # Run pandoc, stripping the first H1 heading, outputting to stdout
    awk '/^# / && !found { found=1; next } { print }' "$SOURCE_FILE" | pandoc -t "$TARGET_FORMAT" --wrap=none
    if [ $? -ne 0 ]; then
        echo "Error: pandoc conversion failed" >&2
        exit 1
    fi
else
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

    # Run pandoc, stripping the first H1 heading from the input
    awk '/^# / && !found { found=1; next } { print }' "$SOURCE_FILE" | pandoc -o "$OUTPUT_FILE" --wrap=none

    if [ $? -eq 0 ]; then
        echo "Successfully converted '$SOURCE_FILE' to '$OUTPUT_FILE'"
    else
        echo "Error: pandoc conversion failed" >&2
        exit 1
    fi
fi
