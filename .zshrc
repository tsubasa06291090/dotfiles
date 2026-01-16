autoload -Uz compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

bindkey -v

eval "$(starship init zsh)"
