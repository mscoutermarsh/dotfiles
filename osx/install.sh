#!/bin/bash

# Inspired by: http://mths.be/osx

if [ "$(uname -s)" == "Darwin" ]
then
  # Set sidebar icon size to small
  defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

  # Set an insanely fast keyboard repeat rate
  defaults write NSGlobalDomain InitialKeyRepeat -int 12
  defaults write NSGlobalDomain KeyRepeat -int 1

  # Use list view in all Finder windows by default
  # Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
  defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
fi
