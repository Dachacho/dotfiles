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
brew install aerospace starship fastfetch zoxide zsh-autosuggestions zsh-syntax-highlighting

brew tap FelixKratz/formulae
brew install sketchybar

brew install --cask ghostty font-jetbrains-mono-nerd-font

# Start sketchybar
brew services start sketchybar
```

## Adding a new config to dotfiles

1. Copy the config to dotfiles:
```bash
cp -r ~/.config/newapp ~/dotfiles/newapp
```

2. Symlink it:
```bash
rm -rf ~/.config/newapp
ln -sf ~/dotfiles/newapp ~/.config/newapp
```

3. Add to `install.sh`:
```bash
rm -rf ~/.config/newapp
ln -sf $DOTFILES/newapp ~/.config/newapp
```

4. Push:
```bash
cd ~/dotfiles
git add .
git commit -m "add newapp config"
git push
```
