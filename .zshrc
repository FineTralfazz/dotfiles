export EDITOR="vim"
export GOPATH="$HOME/Code/go"
export PATH="/usr/local/opt/llvm/bin:/usr/local/bin:$HOME/.rvm/bin:$GOPATH/bin:/opt/devkitpro/tools/bin:$PATH"
export HISTFILE=~/.zsh_history
export SAVEHIST=1000
export DEVKITPRO=/opt/devkitpro
export DEVKITARM="$DEVKITPRO/devkitARM"

# Spaceship theme settings
export SPACESHIP_CHAR_SUFFIX=" "
export SPACESHIP_DOCKER_SHOW=false
export SPACESHIP_KUBECONTEXT_SYMBOL="\ufd31 "
export SPACESHIP_PYENV_SYMBOL="\uf820 "
export SPACESHIP_NODE_SYMBOL="\ue74e "
export SPACESHIP_GOLANG_SYMBOL="Go "
export SPACESHIP_RUBY_SYMBOL="\ue21e "
export SPACESHIP_SWIFT_SYMBOL="\ue755 "
export SPACESHIP_DOTNET_SYMBOL="\ue77f "

if [[ `uname` == Darwin || `uname` == FreeBSD ]]; then
	source /usr/local/share/antigen/antigen.zsh
else
	source /usr/share/zsh-antigen/antigen.zsh
fi

setopt share_history
setopt inc_append_history
setopt extended_history

bindkey -e
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey "^[[1;2D" backward-word
bindkey "^[[1;2C" forward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

#Aliases
alias gdb='gdb -q'
alias http='python2 -m SimpleHTTPServer'

# Plugins
antigen theme denysdovhan/spaceship-prompt
antigen bundle docker
antigen bundle doctl
antigen bundle golang
antigen bundle kubectl
antigen bundle nmap
antigen bundle vscode

antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# PyEnv
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

function anybar { echo -n $1 | nc -4u -w0 localhost ${2:-1738}; }
