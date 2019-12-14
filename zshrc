# Path to your oh-my-zsh installation.
export ZSH=/home/karloskar/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ponty-agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf)

# User configuration
export PATH="/home/karloskar/bin:/home/karloskar/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh

alias vim="nvim"

alias sysupd="sudo apt-get update && sudo apt-get upgrade"
alias sysupdd="sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y"

alias venv=". venv/bin/activate"
alias t="tmuxp load ."

export TERM='xterm-256color'

# zsh stuff
unsetopt nomatch
PROMPT_EOL_MARK=''

if [ -f /home/karloskar/dotfiles/zshrc-extra ]; then
  source '/home/karloskar/dotfiles/zshrc-extra'
fi

#
# GOOGLE
#
# The next line updates PATH for the Google Cloud SDK.
if [ -f /home/karloskar/projects/google-cloud-sdk/path.zsh.inc ]; then
  source '/home/karloskar/projects/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /home/karloskar/projects/google-cloud-sdk/completion.zsh.inc ]; then
  source '/home/karloskar/projects/google-cloud-sdk/completion.zsh.inc'
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --ignore --follow --no-messages --glob "!{.git,node_modules,dotfiles,venv,vendor}/"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
