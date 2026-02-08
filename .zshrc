source ~/.zsh/functions/godlife.zsh
source ~/.zsh/functions/header.zsh
source ~/.zsh/functions/nt-quote.zsh  # Sources nt-quote function
# =======================================
clear  # Clear screen for fresh start

# In ~/.zshrc, under Startup Intro
clear
echo ""  # Optional spacing

if command -v fastfetch &> /dev/null; then
  fastfetch  # Assuming you've configured fastfetch with Catppuccin (e.g., via ~/.config/fastfetch/config.jsonc)
  echo ""    # Blank line for spacing
fi
if command -v nt-quote &> /dev/null; then
  nt-quote   # Now outputs in Catppuccin Mocha colors
fi
# =======================================
# Theme (starship for sleek, customizable prompt)
# =======================================
eval "$(starship init zsh)"  # Starship prompt—install starship first: curl -sS https://starship.rs/install.sh | sh
# =======================================
# Plugins (Lightweight essentials – install if needed via git clone)
# =======================================
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# =======================================
# Aliases (Custom commands for efficiency – install eza for better ls)
# =======================================
alias ls='eza --color=auto --icons'  # Colorful ls with icons (sudo apt install eza -y)
alias ll='eza -la --color=auto --icons'
alias update='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'  # Quick system update
alias clr='clear'  # Shortcut for clear
alias tree='eza --tree --icons'  # Visual file tree (requires eza)
alias gs='git status'  # Quick git check—complements your git plugin
alias kitty='kitty-topleft'
alias viz='cava'
alias god='nt-quote'
alias ff='fastfetch'
export OPENAI_API_KEY=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
