export EDITOR="vim"
export GOPATH="$HOME/Code/go"
export PATH="/usr/local/opt/llvm/bin:/usr/local/bin:$HOME/.rvm/bin:$GOPATH/bin:/opt/devkitpro/tools/bin:$PATH"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
export HISTFILE=~/.zsh_history
export SAVEHIST=1000
export DEVKITPRO=/opt/devkitpro
export DEVKITARM="$DEVKITPRO/devkitARM"
export ZSH_CACHE_DIR=/tmp

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
export SPACESHIP_PACKAGE_SYMBOL="\uf487 "
export SPACESHIP_RUST_SYMBOL="\U1F980 "

if [[ `uname` == Darwin || `uname` == FreeBSD ]]; then
	source /usr/local/share/antigen/antigen.zsh
else
	source /usr/share/zsh-antigen/antigen.zsh
fi

setopt share_history
setopt inc_append_history
setopt extended_history

#Aliases
alias gdb='gdb -q'
alias http='python2 -m SimpleHTTPServer'
alias ghidra=ghidraRun
alias vim=nvim

# Plugins
#antigen use oh-my-zsh
antigen theme denysdovhan/spaceship-prompt
antigen bundle docker
antigen bundle doctl
antigen bundle golang
antigen bundle nmap
antigen bundle unixorn/tumult.plugin.zsh
antigen bundle vscode
antigen bundle marzocchi/zsh-notify
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# PyEnv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Java
alias java8='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/'
alias java12='export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-12.0.1.jdk/Contents/Home/'

function anybar { echo -n $1 | nc -4u -w0 localhost ${2:-1738}; }