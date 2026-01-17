# ~/.zshrc

# == setting history ==
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=100000
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_EXPAND

# == setting complement ==
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors 'di=34:ln=35:ex=31'
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# == 履歴検索ウィジェット ==
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# == alias ==
alias ls='ls -G'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph'
alias gd='git diff'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias vim='nvim'
alias mkdir='mkdir -p'
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -h'

# == keybind (emacsモード) ==
bindkey -e
bindkey '^[[A' up-line-or-beginning-search       # 上矢印で前方一致検索
bindkey '^[[B' down-line-or-beginning-search     # 下矢印で前方一致検索
bindkey '^P' up-line-or-beginning-search         # Ctrl+Pで前方一致検索
bindkey '^N' down-line-or-beginning-search       # Ctrl+Nで前方一致検索
bindkey '^R' history-incremental-search-backward # Ctrl+Rで履歴検索

# == プラグイン ==
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# == starship ==
eval "$(starship init zsh)"
