export EDITOR="vim"
export PATH="/usr/local/bin:$HOME/.rvm/bin:$PATH"
export GOPATH="$HOME/Code/go"
export HISTFILE=~/.zsh_history
export SAVEHIST=1000

if [[ `uname` == Darwin || `uname` == FreeBSD ]]; then
	source /usr/local/share/antigen/antigen.zsh
else
	source /usr/share/zsh-antigen/antigen.zsh
fi

setopt inc_append_history
setopt share_history
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

alias gdb='gdb -q'

# Plugins
antigen theme steeef
antigen bundle gpg-agent
antigen bundle tmux
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
