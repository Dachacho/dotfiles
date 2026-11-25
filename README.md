# dotfiles

My personal macOS dotfiles.

this script backs up `.zshrc` and `.config`

## What's in here
- zsh config (starship + autosuggestions + syntax highlighting + zoxide)
- Ghostty terminal config (Gruvbox Dark, JetBrainsMono Nerd Font)
- Aerospace tiling window manager (8px inner/outer gaps)
- SketchyBar config (preserved but disabled; native macOS menu bar is used)
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

brew install --cask ghostty font-jetbrains-mono-nerd-font
```

## Restoring SketchyBar
The SketchyBar config is kept in `sketchybar/` and is still symlinked by
`install.sh`, but it is intentionally not running. To switch back:

1. Install, trust and start the service:
```bash
brew tap FelixKratz/formulae
brew trust felixkratz/formulae
brew install sketchybar
brew services start sketchybar
```
2. Restore the AeroSpace integration in `.aerospace.toml`:
```toml
exec-on-workspace-change = ['/bin/bash', '-c', 'sketchybar --trigger aerospace_workspace_change FOCUSED_WORKSPACE=$AEROSPACE_FOCUSED_WORKSPACE AEROSPACE_PREV_WORKSPACE=$AEROSPACE_PREV_WORKSPACE']

[gaps]
outer.top = 40
```
3. Disable auto-hiding of the native menu bar if needed:
```bash
defaults write -g _HIHideMenuBar -bool true
killall SystemUIServer
```
4. Reload AeroSpace:
```bash
aerospace reload-config
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
