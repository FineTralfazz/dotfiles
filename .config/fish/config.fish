set -x EDITOR vim
rvm default

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/christopher/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# DevkitPro stuff
set -x DEVKITPRO $HOME/devkitPro
set -x DEVKITARM $DEVKITPRO/devkitARM

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# SSH agent
if test -z "$SSH_ENV"
	setenv SSH_ENV $HOME/.ssh/environment
end

if not __ssh_agent_is_started
	__ssh_agent_start
end
