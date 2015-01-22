# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

# aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias pingtest="ping 8.8.8.8"
alias 3m="cd /Users/charles/Projects/3months"
alias b="bundle exec"

# fun little commands to turn on single app mode when using the dock
alias single-win="defaults write com.apple.dock single-app -bool true && killall Dock"
alias multi-win="defaults write com.apple.dock single-app -bool false && killall Dock"

alias rsp="bundle exec rails s -e development_published -p3001 -P tmp/pids/server2.pid"
alias rspd="bundle exec rails s -e development_published -p3001 -P tmp/pids/server2.pid --debugger"

alias android-screen="adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > ~/Desktop/android-screenshot-`date +%Y-%m-%d_%H.%M.%S`.png"

alias start_es="elasticsearch -f -D es.config=/usr/local/opt/elasticsearch/config/elasticsearch.yml"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github rails ruby autojump bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

### Paths
# When using brew
export PATH=/usr/local/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# added by travis gem
[ -f /Users/charles/.travis/travis.sh ] && source /Users/charles/.travis/travis.sh

# Android sdk platform tools
export PATH="/Users/charles/sdk/platform-tools":$PATH
