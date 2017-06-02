export PATH="/usr/local/bin:$HOME/.rvm/bin:$PATH"
export HISTFILE=~/.zsh_history
source /usr/local/share/antigen/antigen.zsh

# Plugins
antigen theme steeef
antigen bundle gpg-agent
antigen bundle tmux
antigen bundle z
antigen bundle history
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
