#!/usr/bin/env bash

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install meteor
hash meteor 2>/dev/null || curl https://install.meteor.com/ | sh

# Installs with brew
brew install node
brew install graphicsmagick
brew install fish
brew install ffmpeg
brew install wget
brew install python3
brew install git-lfs
brew install mongodb
brew install nvm
brew install clamav                 # Antivirus engine

# Update pip and setuptools
pip3 install --upgrade pip setuptools

# Take a look at: https://objective-see.com/products.html
# and https://github.com/drduh/OS-X-Security-and-Privacy-Guide#dns

# Installs with cask
brew cask install dropbox           # Dropbox client
brew cask install atom              # Atom file editor
brew cask install macvim            # Vim for mac
brew cask install alfred            # Helpful executional tool
brew cask install controlplane      # Context-based trigger tool
brew cask install google-chrome     # Google chrome browser
brew cask install xquartz           # X11 apps
brew cask install smcfancontrol     # Fan control widget
brew cask install openttd           # The game OpenTTD
brew cask install iterm2            # The well known iterm2
brew cask install airfoil
brew cask install airserver
brew cask install blender           # Blender 3d utility
brew cask install dockertoolbox     # Docker toolbox
brew cask install evernote          # Evernotes
brew cask install firefox           # Firefox browser
brew cask install google-drive      # Google Drive client
brew cask install intellij-idea     # IntelliJ Idea
brew cask install microsoft-office  # Microsoft office package
brew cask install mamp              # MAMP local server environment
brew cask install minecraft         # Minecraft
brew cask install pycharm           # Pycharm
brew cask install skype             # Skype client
brew cask install slack             # Slack client
brew cask install spotify           # Spotify player
brew cask install steam             # Steam client
brew cask install mactex            # Latex
brew cask install flux              # Display light manager
brew cask install java              # Java
brew cask install little-snitch     # Network monitoring
brew cask install micro-snitch      # Camera and mic snitcher
brew cask install charles           # HTTP proxy / HTTP monitor / Reverse Proxy
brew cask install easyfind          # Search app

brew cask install skim              # Pdf viewer

########################### Setup the programs #################################

# Add fish to supported shells
sudo bash -c "grep -q -F '/usr/local/bin/fish' /etc/shells || echo '/usr/local/bin/fish' >> /etc/shells"
chsh -s /usr/local/bin/fish

# Install fish theme package
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

# install fortune, cowsay and lolcat
brew install fortune
brew install cowsay
sudo gem install lolcat

# Setup fortune, cowsay and lolcat on fish
sudo grep -q -F '# Custom configs' ~/.config/fish/config.fish || cat ./fish_config >> ~/.config/fish/config.fish

# Setup NVM
mkdir ~/.nvm
ln -s (brew --prefix nvm)/nvm.sh ~/.nvm/nvm.sh
cd ~/.config/fish
git clone git://github.com/passcod/nvm-fish-wrapper.git nvm-wrapper

# Remove install files
brew cask cleanup


######################## Install atom packages #################################

# eslint
apm install linter-eslint

# React helpers
apm install react

# jsx linter
apm install linter-jsxhint

# SCSS linter
gem install scss_lint
apm install linter-scss-lint

# Latex setup
apm install language-latex
apm install latex-friend
apm install latextools
apm install linter
apm install linter-chktex
apm install pdf-view
