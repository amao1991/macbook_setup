#!/bin/bash

# Install homebrew & Xcode Command Line Tools
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Apple Silicon add PATH
if [[ `uname -m` == 'arm64' ]]; then
  export PATH=/opt/homebrew/bin:$PATH
fi

# Turn off analytics
brew analytics off

# brew install
brew install \
nmap \
git \
fish \
mas \
java11

# fish config
if [ -d "~/.config/fish/" ]; then
  cp -R ./config/fish/ ~/.config/fish/
fi

# brew cask install
brew install --cask \
iterm2 \
spotify \
vmware-fusion \
google-chrome \
visual-studio-code \
microsoft-remote-desktop \
the-unarchiver \
telegram-desktop \
messenger \
iina
stats \
# hiddenbar \
# quip \
# brooklyn \
# 1password \
# notion \

# brew caffix/amass install
brew tap caffix/amass
brew install amass

# brew cask/versions install
brew tap homebrew/cask-versions
brew install --cask \
firefox-nightly

# brew cask/font install
# brew tap homebrew/cask-fonts
# brew install \
# font-noto-sans-cjk-tc \
# --cask

# mas install
# APP_ID    |APP_NAME
# ----------|--------
# 1105332179|KKBOX
# 975937182 |Fantastical
# 539883307 |LINE
# 1176895641|Spark
# 1451685025|WireGuard

mas install \
1451685025 \
539883307 \
975937182
