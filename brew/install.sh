#!/usr/bin/env bash

# Abort on error
set -e

# Checks if Homebrew is installed
if test ! $(which brew); then
  echo "Installing Homebrew...";
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "Homebrew is already installed...";
fi

brew bundle --file $DOTFILES/Brewfile

# Remove outdated versions from the cellar
brew cleanup