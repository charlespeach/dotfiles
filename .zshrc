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

alias start_es="elasticsearch -f -D es.config=/usr/local/opt/elasticsearch/config/elasticsearch.yml"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github rails3 rails ruby autojump bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

### Paths
# When using brew from boxen
#[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
# When using brew (not from boxen)
export PATH=/usr/local/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
