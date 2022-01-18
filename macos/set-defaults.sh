#!/bin/sh

# Open folders in Finder in a List view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show path in Finder
defaults write com.apple.Finder ShowPathbar -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show status bar in Safari
# defaults write com.apple.Safari ShowOverlayStatusBar -bool true
