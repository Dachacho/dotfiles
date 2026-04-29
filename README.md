# dotfiles

My personal macOS dotfiles.

this script backs up `.zshrc` and `.config`

## What's in here
- zsh config (starship + autosuggestions + syntax highlighting + zoxide)
- Ghostty terminal config (Gruvbox Dark, JetBrainsMono Nerd Font)
- Aerospace tiling window manager
- Sketchybar status bar
- Starship prompt
- fastfetch with custom config

## Neovim
Lives in a separate repo _(clone it separately)_

## Install
```bash
git clone git@github.com:Dachacho/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## Dependencies
```bash
brew install aerospace starship fastfetch 

brew tap FelixKratz/formulae
brew install sketchybar

brew install --cask ghostty
```
