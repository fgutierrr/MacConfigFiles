#!/bin/bash
# from http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install ZSH
brew install zsh

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

echo "Add $(brew --prefix coreutils)/libexec/gnubin to path head."

bins=(
    go
    elixir
    tree
    ack
    git
    trash
)

echo "Installing binaries..."
brew install ${bins[@]}

brew cleanup