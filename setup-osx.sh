#!/usr/bin/env bash

#turn on screensaver and make sure they ask for a password
defaults -currentHost write com.apple.screensaver idleTime 300  #in seconds
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

#Set Lock screen message
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText 'Property of Bjørn Bråthen.'

#Set Computer Name to user name
user=$(logname)
ComputerName="$user"
sudo scutil --set ComputerName $ComputerName
sudo scutil --set HostName $ComputerName
sudo scutil --set LocalHostName $ComputerName
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$USER-Macbook"

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true

# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

#Defualt screenshot save location
defaults write com.apple.screencapture location ~/Downloads

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Remove useless icons from Safari’s bookmarks bar
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

# Show path bar in Finder
/usr/bin/defaults write com.apple.finder 'ShowPathbar' -bool true

# Pin dock to the left and middle, and use auto-hide
defaults write com.apple.Dock orientation -string left
defaults write com.apple.Dock pinning -string middle

# appstore debug menu
defaults write com.apple.appstore ShowDebugMenu -bool true

# appstore inspect element
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# Crash reports in notifications
defaults write com.apple.CrashReporter UseUNC 1

# Add a divider to the Dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'

# Autohide the dock
defaults write com.apple.dock autohide -bool true

# Adds dark mode hotkey
sudo defaults write /Library/Preferences/.GlobalPreferences.plist _HIEnableThemeSwitchHotKey -bool true

# Show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Turn off auto-correction
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Copy only email address
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Display full posix path in OS X Finder title Bar
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Add Application folder to dock osx command
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { arrangement = 1; book = <626f6f6b a0020000 00000410 30000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 b4010000 0c000000 01010000 4170706c 69636174 696f6e73 04000000 01060000 04000000 08000000 04030000 47000000 00000000 04000000 01060000 24000000 08000000 00040000 41bc4737 dd000000 18000000 01020000 02000000 00000000 0f000000 00000000 00000000 00000000 00000000 01050000 08000000 01090000 66696c65 3a2f2f2f 0c000000 01010000 4d616369 6e746f73 68204844 08000000 04030000 0000008d 35000000 08000000 00040000 41bc63c6 7e000000 24000000 01010000 30383930 39373944 2d353034 392d3344 30352d42 3331392d 34344644 46413943 35324337 18000000 01020000 81000000 01000000 ef130000 01000000 00000000 00000000 01000000 01010000 2f000000 98000000 01020000 39666261 61623465 39316565 65303763 36323964 32646339 36653037 34656237 39643938 66346238 3b303030 30303030 303b3030 30303030 30303b30 30303030 30303030 30303030 3031613b 636f6d2e 6170706c 652e6170 702d7361 6e64626f 782e7265 61643b30 30303030 3030313b 30313030 30303035 3b303030 30303030 30303030 30303034 373b2f61 70706c69 63617469 6f6e7300 b4000000 feffffff 01000000 00000000 0e000000 04100000 18000000 00000000 05100000 34000000 00000000 10100000 50000000 00000000 40100000 40000000 00000000 02200000 08010000 00000000 05200000 78000000 00000000 10200000 88000000 00000000 11200000 bc000000 00000000 12200000 9c000000 00000000 13200000 ac000000 00000000 20200000 e8000000 00000000 30200000 70000000 00000000 01d00000 70000000 00000000 81f00000 14010000 00000000>; displayas = 1; "file-data" = { "_CFURLString" = "file:///Applications/"; "_CFURLStringType" = 15; }; "file-label" = Applications; "file-mod-date" = 3537470706; "file-type" = 2; preferreditemsize = "-1"; showas = 0; }; "tile-type" = "directory-tile"; }'

# Turn on magnification on dock
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 64
defaults write com.apple.dock tilesize -int 35


# Enable the Recent Items Menu in the Dock
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'

# Enable safari debug Menu
defaults write com.apple.Safari IncludeInternalDebugMenu 1

# Enable safari develop menu
defaults write com.apple.Safari IncludeDevelopMenu 1

# Set clock format menu bar date and 24 hours clock
defaults write com.apple.menuextra.clock "DateFormat" 'EEE d MMM HH:mm:ss'

# Set standard toolbar finder = add path button as default in finder toolbar
defaults write com.apple.Finder "NSToolbar Configuration Browser" '{ "TB Default Item Identifiers" = ( "com.apple.finder.BACK", NSToolbarFlexibleSpaceItem, "com.apple.finder.SWCH", "com.apple.finder.ARNG", "com.apple.finder.ACTN", "com.apple.finder.SHAR", "com.apple.finder.LABL", NSToolbarFlexibleSpaceItem, NSToolbarFlexibleSpaceItem, "com.apple.finder.SRCH" ); "TB Display Mode" = 2; "TB Icon Size Mode" = 1; "TB Is Shown" = 1; "TB Item Identifiers" = ( "com.apple.finder.BACK", NSToolbarFlexibleSpaceItem, "com.apple.finder.SWCH", "com.apple.finder.ARNG", "com.apple.finder.ACTN", "com.apple.finder.PATH", "com.apple.finder.SHAR", "com.apple.finder.LABL", NSToolbarFlexibleSpaceItem, NSToolbarFlexibleSpaceItem, "com.apple.finder.SRCH" ); "TB Size Mode" = 1; }'

killall -KILL SystemUIServer
killall -HUP Dock
killall Dock
killall Finder
