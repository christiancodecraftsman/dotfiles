# Replace ls with eza
alias ls="eza --color=always --icons=always"
alias ll="eza -lah --color=always --icons=always"
alias la="eza -a --color=always --icons=always"
alias tree="eza --tree --color=always --icons=always"

# Launch Starship Prompt (Must be final line)
eval "$(starship init zsh)"
