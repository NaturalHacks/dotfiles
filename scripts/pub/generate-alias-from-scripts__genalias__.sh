#!/bin/sh

# Directory to search for files
DIR="$HOME/def/cfgrepo/scripts/pub"

# Output file
OUTPUT_FILE="$HOME/def/dotfiles/shell/aliases/.pubscript_autogen.sh"

# Clear the output file if it exists
> "$OUTPUT_FILE"

# Add the shebang
echo "#!/bin/sh" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"  # Add a newline

# Loop through each .sh file in the directory
for file in $DIR/*.sh; do  # Removed quotes to fix globbing
  # Extract the TEXT part between double underscores
  TEXT=$(basename "$file" | sed -n 's/.*__\(.*\)__\.sh/\1/p')
  
  # Only proceed if TEXT is not empty
  if [ -n "$TEXT" ]; then
    # Write the alias command to the output file
    echo "alias $TEXT=\"$file\"" >> "$OUTPUT_FILE"
  fi
done

# Make the aliases file executable
chmod +x "$OUTPUT_FILE"

# Inform the user
echo "Aliases generated in $OUTPUT_FILE"
echo "Sourcing new file..."

# Source the new aliases
source "$OUTPUT_FILE"

echo "Done ✅"

