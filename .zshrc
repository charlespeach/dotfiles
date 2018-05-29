# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# Generic aliases
alias pingtest="ping 8.8.8.8"
alias pingpw="ping -c 1 8.8.8.8 | md5"
alias b="bundle exec"
alias cop="b rubocop"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Toggles for single app mode on the dock
alias single-win="defaults write com.apple.dock single-app -bool true && killall Dock"
alias multi-win="defaults write com.apple.dock single-app -bool false && killall Dock"

# Quick jumps
alias ml="cd ~/Melon/"
alias rei="cd ~/reinteractive"
alias pj="cd ~/Projects/"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git github rails ruby bundler)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=~/bin:$PATH

# Initialize language version managers
export RBENV_ROOT=~/.rbenv
export PYENV_ROOT=~/.pyenv
export NVM_ROOT="$HOME/.nvm"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

#eval "$(pipenv --completion)"
[ -s "$NVM_ROOT/nvm.sh" ] && . "$NVM_ROOT/nvm.sh"
[[ -f /Users/charlespeach/.sentinel/current/bin/sentinel ]] && eval "$(/Users/charlespeach/.sentinel/current/bin/sentinel init -)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
