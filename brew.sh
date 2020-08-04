#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
#brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
#brew install bash
#brew tap homebrew/versions
#brew install bash-completion2

# Install `wget` with IRI support.
#brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
#brew install ringojs
#brew install narwhal

# Install more recent versions of some OS X tools.
#brew install vim --override-system-vi
#brew install homebrew/dupes/nano
#brew install homebrew/dupes/grep
#brew install homebrew/dupes/openssh
#brew install homebrew/dupes/screen
#brew install homebrew/php/php55 --with-gmp

# Install font tools.
#brew tap bramstein/webfonttools
#brew install sfnt2woff
#brew install sfnt2woff-zopfli
#brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
#brew install aircrack-ng
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install netpbm
#brew install nmap
#brew install pngcheck
#brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp # `tcpserver` etc.
#brew install xpdf
#brew install xz

# Install other useful binaries.
brew install the_silver_searcher
brew install fzf

brew install git

# github util. gotta love `hub fork`, `hub create`, `hub checkout <PRurl>` <https://hub.github.com/>
#brew install hub
#brew install imagemagick --with-webp
brew install node # This installs `npm` too using the recommended installation method
brew install pv
brew install rename
brew install zopfli
#brew install ffmpeg --with-libvpx

brew install terminal-notifier

brew install pidcat   # colored logcat guy

brew install ncdu # find where your diskspace went


#brew install ack
brew install bat
#brew install dark-mode

# Run arbitrary commands when files change <http://eradman.com/entrproject/>
#brew install entr
#brew install exiv2
#brew install git-lfs
#brew install imagemagick --with-webp
#brew install lua
#brew install lynx
#brew install p7zip
#brew install pigz
#brew install pv
#brew install rename
#brew install rhino
#brew install speedtest_cli
#brew install ssh-copy-id
brew install tree
#brew install webkit2png

# z hopping around folders (didn't work via homebrew)
brew install z
#brew install zopfli
brew install zsh

# Install Apps
brew cask install android-platform-tools
brew cask install iterm2
brew cask install alfred
#brew cask install spectacle
brew cask install rectangle
#brew cask install sublime-text
#brew cask install github-desktop
brew cask install google-chrome
brew cask install firefox
brew cask install opera
brew cask install visual-studio-code

#brew cask install skype
brew cask install slack
#brew cask install spotify
#brew cask install caffeine
brew cask install dropbox
brew cask install figma
brew cask install imageoptim
brew cask install rambox
#brew cask install transmit
#brew cask install sketch
#brew cask install vlc

# Remove outdated versions from the cellar.
brew cleanup
