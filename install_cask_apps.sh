#!/bin/bash
if test ! $(which cask); then
  echo "Installing cask..."
  brew install caskroom/cask/brew-cask
fi

apps=(
    dropbox
    transmission
    spotify
    vlc
    mailbox
    skype
    sublime-text3
    qlcolorcode
    qlstephen
    qlmarkdown
    quicklook-json
    quicklook-csv
    qlimagesize
)

#add later lastpass

#Install to /Applications
echo "Aye sire! Installing"
brew cask install --appdir="/Applications" ${apps[@]}

echo "Installing fonts"
brew tap caskroom/fonts

fonts=(
    font-inconsolata
    font-source-code-pro
    font-droid-sans-mono
    font-anonymous-pro
)

brew cask install ${fonts[@]}