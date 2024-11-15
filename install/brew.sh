#!/usr/bin/env bash

echo "🍺 Starting Homebrew install..."

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew update
brew upgrade

echo "🍺 Homebrew installed successfully!"
echo "🍺 Starting brew install..."

# Install command-line tools using Homebrew
brew install aws-cdk
brew install awscli
brew install git
brew install go
brew install k9s
brew install kubernetes-cli
brew install neovim
brew install node@20
brew install python@3.12
brew install tmux
brew install vim
brew install wget
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting

echo "🍺 Brew install complete!"
echo "🍺 Starting cask install..."

# Install Casks
brew install --cask alfred
brew install --cask docker
brew install --cask firefox
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask obsidian
brew install --cask postman
brew install --cask slack
brew install --cask stats
brew install --cask spotify
brew install --cask sublime-text
brew install --cask visual-studio-code

echo "🍺 Cask install complete!"
