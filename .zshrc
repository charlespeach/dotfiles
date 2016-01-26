# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# generic aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias pingtest="ping 8.8.8.8"
alias pingpw="ping -c 1 8.8.8.8 | md5"
alias b="bundle exec"


# Disabling Airdrop completely because it causes more issues than it solves
alias enableAD="defaults write com.apple.NetworkBrowser DisableAirDrop -bool NO && sudo ifconfig awdl0 up"
alias disableAD="defaults write com.apple.NetworkBrowser DisableAirDrop -bool YES && sudo ifconfig awdl0 down"

# fun little commands to turn on single app mode when using the dock
alias single-win="defaults write com.apple.dock single-app -bool true && killall Dock"
alias multi-win="defaults write com.apple.dock single-app -bool false && killall Dock"

alias android-screen="adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > ~/Desktop/android-screenshot-`date +%Y-%m-%d_%H.%M.%S`.png"

alias start_es="elasticsearch -f -D es.config=/usr/local/opt/elasticsearch/config/elasticsearch.yml"

# work specific aliases
alias crs="cd ~/Development/crs/"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github rails ruby autojump bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=~/bin:$PATH

export RBENV_ROOT=/usr/local/var/rbenv

eval $(docker-machine env default)

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
