#!/bin/sh
#
# pre-installation:
# - install Xcode
#

echo "Setting up your Mac..."

# Xcode command line tools
xcode-select --install

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/.p10k.zsh $HOME/.p10k.zsh

# Install ruby
rbenv install 2.7
rbenv global 2.7

# Install Rust
rustup-init -y

# Install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg
ln -s $HOME/.dotfiles/.mackup $HOME/.mackup

# restore apps settings
mackup restore

# Install useful keybindings for fzf
$(brew --prefix)/opt/fzf/install

# Set default applications using duti
./duti/setup.sh

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
