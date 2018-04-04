# Unhide the Library folder
chflags nohidden ~/Library

# Disable Chrome's print preview
defaults write com.google.Chrome DisablePrintPreview -boolean true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Remove window shadow from screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
# defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Enable subpixel font rendering on non-Apple LCDs
# defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Up Bluetooth A2DP audio quality
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" 40

defaults write com.tapbots.TweetbotMac OpenURLsDirectly YES

# Disable animations on Emoji picker opening
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Set default screenshot location
defaults write com.apple.screencapture location ~/Downloads/
