
# Install meteor
curl https://install.meteor.com/ | sh







# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install cask
brew tap phinze/cask
brew install brew-cask

# Installs with brew
brew install node
brew install graphicsmagick
brew install fish
brew install ffmpeg
brew install wget





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
brew cask install elasticsearch     # Elasticsearch

########################### Setup the programs #################################

# Support cask apps in alfred
brew cask alfred link

# Add fish to supported shells
sudo bash -c 'echo "/usr/local/bin/fish" >> /etc/shells'
chsh -s /usr/local/bin/fish

# Install fish theme package
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

# install fortune, cowsay and lolcat
brew install fortune
brew install cowsay
sudo gem install lolcat

# Setup fortune, cowsay and lolcat on fish
sudo cat ./fish_config >> ~/.config/fish/config.fish

# Remove install files
brew cask cleanup
