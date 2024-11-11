# ~/.zshrc
setopt INTERACTIVE_COMMENTS

alias c='z'
alias q='exit'
alias kys='shutdown now'

alias cf='file="$(fzf)"; [ -n "$file" ] && nvim "$file" +":cd %:p:h"'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Set a variable to check if it's the first prompt
FIRST_PROMPT=true

# Define the precmd function to add a newline
precmd() {
  # Skip the first prompt (startup) by checking the variable
  if [ "$FIRST_PROMPT" = true ]; then
    FIRST_PROMPT=false
  else
    # Add a newline after each subsequent command
    echo ""
  fi
}

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# Add zsh-autosuggestions plugin
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add zsh-syntax-highlighting plugin
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/lucas/.dart-cli-completion/zsh-config.zsh ]] && . /home/lucas/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
