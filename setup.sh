# Symlink all the things
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.irbrc ~/.irbrc
ln -s ~/.dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# Custom keyrepeat speeds
defaults write NSGlobalDomain KeyRepeat -int 0.02
defaults write NSGlobalDomain InitialKeyRepeat -i 12
# Turn on developer tools
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
# Unhide library dir
chflags nohidden ~/Library
# Setup screenshots to default to a folder on the desktop
mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots