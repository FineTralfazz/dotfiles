export EDITOR="nvim"
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

if [[ `uname` == Darwin ]]; then
	export PATH=$PATH:/opt/homebrew/bin
	export SSH_AUTH_SOCK="$(brew --prefix)/var/run/yubikey-agent.sock"
	source /opt/homebrew/share/antigen/antigen.zsh
else
	source /usr/share/zsh-antigen/antigen.zsh
fi

# Plugins
antigen bundle docker
antigen bundle doctl
antigen bundle golang
antigen bundle nmap
antigen bundle vscode
antigen bundle marzocchi/zsh-notify
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

setopt share_history
setopt inc_append_history
setopt extended_history
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

#Aliases
alias gdb='gdb -q'
alias http='ifconfig en0 && python3 -m http.server'
alias ghidra=ghidraRun
alias vim=nvim
alias ecrlogin='aws ecr get-login-password | docker login --username AWS --password-stdin 807910786745.dkr.ecr.us-west-2.amazonaws.com'
alias ls=exa

# PyEnv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Java
alias java8='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/'
alias java12='export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-12.0.1.jdk/Contents/Home/'

function anybar { echo -n $1 | nc -4u -w0 localhost ${2:-1738}; }
eval "$(starship init zsh)"
