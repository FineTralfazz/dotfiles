export EDITOR="vim"
export GOPATH="$HOME/Code/go"
export PATH="/usr/local/opt/llvm/bin:/usr/local/bin:$HOME/.rvm/bin:$GOPATH/bin:/opt/devkitpro/tools/bin:$PATH"
export HISTFILE=~/.zsh_history
export SAVEHIST=1000
export DEVKITPRO=/opt/devkitpro
export DEVKITARM="$DEVKITPRO/devkitARM"

if [[ `uname` == Darwin || `uname` == FreeBSD ]]; then
	source /usr/local/share/antigen/antigen.zsh
else
	source /usr/share/zsh-antigen/antigen.zsh
fi

setopt share_history
setopt inc_append_history
setopt extended_history

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey "^[[1;2D" backward-word
bindkey "^[[1;2C" forward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

#Aliases
alias gdb='gdb -q'

# Plugins
antigen theme steeef
antigen bundle tmux
antigen bundle docker
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# PyEnv
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

function anybar { echo -n $1 | nc -4u -w0 localhost ${2:-1738}; }
