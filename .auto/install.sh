#!/bin/bash

# Define the dotfiles directory
DOTFILES_DIR="$HOME/dotfiles"

echo "Make sure you want to search on $DOTFILES_DIR}"

# Check if the stow command is available
if ! command -v stow &> /dev/null
then
    echo "stow could not be found. Please install stow and try again."
    exit 1
fi

# Iterate over all directories in the dotfiles directory, excluding .git
for dir in "$DOTFILES_DIR"/*/; do
    # Get the base name of the directory
    dir_name=$(basename "$dir")

    # Skip the .git directory
    if [ "$dir_name" == ".git" ]; then
        continue
    fi

    # Run the stow command on the directory
    echo "Running stow on directory: $dir_name"
    stow -t "$HOME" "$dir_name"

    # Check if the stow command was successful
    if [ $? -eq 0 ]; then
        echo "stow command completed successfully for $dir_name."
    else
        echo "stow command failed for $dir_name."
        exit 1
    fi
done

echo "All stow commands completed."


