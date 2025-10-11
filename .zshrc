HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY
setopt correct
setopt autocd

autoload -Uz compinit
compinit

autoload -U colors && colors

alias ls='eza --icons always'
alias v='nvim'

export PATH="$HOME/.local/bin:$PATH"
export EDITOR="nvim"

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d'
export FZF_PREVIEW_COMMAND="bat --style=numbers --color=always --line-range :500 {} 2>/dev/null"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"

