#!/bin/sh

# Open folders in Finder in a List view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show path in Finder
defaults write com.apple.Finder ShowPathbar -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Open Downloads folder in a new window
defaults write com.apple.finder NewWindowTargetPath -string "file:///Users/dostovalov/Downloads/"

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Dock 
defaults write com.apple.dock tilesize -integer 40
defaults write com.apple.dock largesize -int 80
killall Dock


# Show status bar in Safari
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write -g WebKitDeveloperExtras -bool true

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Disable language indicator
defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled 0