# ─── Path ───────────────────────────────────────────────
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/.spicetify"

# ─── NVM ────────────────────────────────────────────────
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ─── Zsh Autosuggestions ────────────────────────────────
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

# ─── Zsh Syntax Highlighting ────────────────────────────
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ─── Keybindings ────────────────────────────────────────
bindkey '^[[1;3D' backward-word
bindkey '^[[1;3C' forward-word

# ─── Zoxide ─────────────────────────────────────────────
eval "$(zoxide init zsh)"

# ─── Starship ───────────────────────────────────────────
eval "$(starship init zsh)"
