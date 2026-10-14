ZSH_DISABLE_COMPFIX=true

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

export HOMEBREW_NO_AUTO_UPDATE=1

## Generic aliases
alias pingtest="ping 8.8.8.8"
alias pingpw="ping -c 1 8.8.8.8 | md5"
alias b="bundle exec"
alias cop="b rubocop"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

## Flux aliases
alias batchannel="open https://meet.google.com/mcy-qxvq-gnb"
alias meet="open https://meet.google.com/new"

## Config aliases
alias zshrc="code $HOME/.zshrc"
alias gitconfig="code $HOME/.gitconfig"

## Fix not worky aliases
alias opensesame='ssh-add -e /usr/lib/ssh-keychain.dylib;ssh-add ~/.ssh/id_ed25519;ssh-add -s /usr/lib/ssh-keychain.dylib'
alias openaws='aws sso login --sso-session flux-users'

## Weather
alias weather="curl wttr.in/palmerston+north"

## Quick jumps
alias src="cd $HOME/src"

plugins=(git gh rails ruby bundler)

source $ZSH/oh-my-zsh.sh

## Initialize language version managers
export RBENV_ROOT="$HOME/.rbenv"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH

## Terminal and shell
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

function banking-qa-shell() { kubectl exec -it "$@" -n qa-banking -- /bin/bash; }

export PATH="/opt/homebrew/opt/mariadb@10.5/bin:$PATH"

####

alias psau-test='eval "$(wipcli clusters switch psau-test -u charlespeach -r HQAdmin psau-test)"'
alias psnz-test='eval "$(wipcli clusters switch psnz-test -u charlespeach -r HQAdmin psnz-test)"'
alias merx-test='eval "$(wipcli clusters switch merx-test -u charlespeach -r HQAdmin merx-test)"'
alias customer='eval "$(wipcli clusters switch customer -u charlespeach -r HQAdmin customer)"'
alias dlvr-prod='eval "$(wipcli clusters switch dlvr-prod -u charlespeach -r HQAdmin dlvr-prod)"'
alias dlvr-test='eval "$(wipcli clusters switch dlvr-test -u charlespeach -r HQAdmin dlvr-test)"'
alias dlvr-dev='eval "$(wipcli clusters switch dlvr-dev -u charlespeach -r HQAdmin dlvr-dev)"'
export FLUX_AWS_SSO=true

# Added by Antigravity
export PATH="/Users/charlespeach/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity IDE
export PATH="/Users/charlespeach/.antigravity-ide/antigravity-ide/bin:$PATH"
