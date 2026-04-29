#!/bin/bash
DOTFILES="$HOME/dotfiles"

# Create config dir if it doesn't exist
mkdir -p ~/.config

ln -sf $DOTFILES/.zshrc ~/.zshrc
ln -sf $DOTFILES/.aerospace.toml ~/.aerospace.toml
ln -sf $DOTFILES/starship.toml ~/.config/starship.toml
ln -sf $DOTFILES/ghostty ~/.config/ghostty
ln -sf $DOTFILES/sketchybar ~/.config/sketchybar
echo "Done!"
