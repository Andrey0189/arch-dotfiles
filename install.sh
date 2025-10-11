#!/bin/bash

DOTFILES_DIR=$(pwd)
CONFIG_DIR=".config"
BACKUP_SUFFIX=".bak"

mapfile -t CONFIG_FILES < <(ls "$CONFIG_DIR")

mkdir -p "$HOME/.config"

for config in "${CONFIG_FILES[@]}"; do
    SOURCE_PATH="$DOTFILES_DIR/$CONFIG_DIR/$config"
    DEST_PATH="$HOME/$CONFIG_DIR/$config"

    if [ -e "$DEST_PATH" ] || [ -L "$DEST_PATH" ]; then
        echo "Backing up existing $DEST_PATH to $DEST_PATH$BACKUP_SUFFIX"
        mv "$DEST_PATH" "$DEST_PATH$BACKUP_SUFFIX"
    fi

    echo "Copying $config"
    cp -r "$SOURCE_PATH" "$DEST_PATH"
done

ZSHRC_SOURCE="$DOTFILES_DIR/.zshrc"
ZSHRC_DEST="$HOME/.zshrc"

if [ -e "$ZSHRC_DEST" ] || [ -L "$ZSHRC_DEST" ]; then
    echo "Backing up existing $ZSHRC_DEST to $ZSHRC_DEST$BACKUP_SUFFIX"
    mv "$ZSHRC_DEST" "$ZSHRC_DEST$BACKUP_SUFFIX"
fi

echo "Copying .zshrc"
cp "$ZSHRC_SOURCE" "$ZSHRC_DEST"

echo "Installation complete! 🎉"
