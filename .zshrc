ZSH_DISABLE_COMPFIX=true

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

## Generic aliases
alias pingtest="ping 8.8.8.8"
alias pingpw="ping -c 1 8.8.8.8 | md5"
alias b="bundle exec"
alias cop="b rubocop"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

## Config aliases
alias zshrc="code $HOME/.zshrc"
alias gitconfig="code $HOME/.gitconfig"

## Weather
alias weather="curl wttr.in/palmerston+north"

## Quick jumps
alias pj="cd $HOME/Projects"
alias src="cd $HOME/src"

plugins=(git github rails ruby bundler)

source $ZSH/oh-my-zsh.sh

export GPG_TTY=$(tty)

## Initialize language version managers
export RBENV_ROOT="$HOME/.rbenv"
export PYENV_ROOT="$HOME/.pyenv"
export NODENV_ROOT="$HOME/.nodenv"

export PATH="$HOME/.nodenv/bin:$PATH"

# export PATH="$PYENV_ROOT/bin:$PATH"
# export PATH=/usr/local/bin:$PATH
# export PATH=/usr/local/sbin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH="$PATH:$HOME/.local/bin"
export PATH=$PATH:$HOME/bin
# eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export GPG_TTY=$(tty)

## Terminal and shell
if which starship > /dev/null; then eval "$(starship init zsh)"; fi
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
# if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
