#!/bin/bash
DOTFILES="$HOME/dotfiles"

# Create config dir if it doesn't exist
mkdir -p ~/.config

cp ~/.zshrc ~/.zshrc.bak 2>/dev/null
cp -r ~/.config ~/.config.bak 2>/dev/null

# Remove existing files/dirs first
rm -f ~/.zshrc
rm -f ~/.aerospace.toml
rm -f ~/.config/starship.toml
rm -rf ~/.config/ghostty
rm -rf ~/.config/sketchybar

#install
ln -sf $DOTFILES/.zshrc ~/.zshrc
ln -sf $DOTFILES/.aerospace.toml ~/.aerospace.toml
ln -sf $DOTFILES/starship.toml ~/.config/starship.toml
ln -sf $DOTFILES/ghostty ~/.config/ghostty
ln -sf $DOTFILES/sketchybar ~/.config/sketchybar
echo "Done!"
