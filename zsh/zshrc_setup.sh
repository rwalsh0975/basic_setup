#!/bin/bash

# Define the file name and target destination
FILE_NAME="zshrc"
DESTINATION="$HOME/.zshrc"

# Check if the file exists in the current directory
if [[ -f "$FILE_NAME" ]]; then
    # Copy the file to the target destination
    cp "$FILE_NAME" "$DESTINATION"
    
    # Check if the copy was successful
    if [[ $? -eq 0 ]]; then
        echo "File copied successfully. Sourcing the new ~/.zshrc."
        
        # Source the new ~/.zshrc
        source "$DESTINATION"
    else
        echo "Failed to copy the file to $DESTINATION."
        exit 1
    fi
else
    echo "Error: $FILE_NAME does not exist in the current directory."
    exit 1
fi

