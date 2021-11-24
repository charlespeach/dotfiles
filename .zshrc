ZSH_DISABLE_COMPFIX=true

ZSH=$HOME/.oh-my-zsh
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
alias pj="cd $HOME/Projects/"
alias fl="cd $HOME/Flux/"

plugins=(git github rails ruby bundler)

# export PATH=/usr/local/bin:$PATH
# export PATH=/usr/local/sbin:$PATH
# export PATH=~/bin:$PATH

## Initialize language version managers
export RBENV_ROOT="$HOME/.rbenv"
export PYENV_ROOT="$HOME/.pyenv"
export NVM_ROOT="$HOME/.nvm"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

## Terminal and shell
eval "$(starship init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export MAKE="make -j$(nproc)"
