# Edgar's Dotfiles

https://github.com/edgar/dotfiles

Based on [Drie's dotfiles](https://github.com/driesvints/dotfiles), these dotfiles leverages [Brew](https://github.com/driesvints/dotfiles/blob/master/Brewfile) and [Mackup](https://github.com/lra/mackup) to setup and customize a macOS environment to my liking and setting up the software development tools I use on a day-to-day basis. They should be cloned to your home directory so that the path is `~/.dotfiles/`. The included setup script creates symlinks from your home directory to the files which are located in `~/.dotfiles/`.

![terminal](https://raw.github.com/edgar/dotfiles/master/edgar-terminal.png)

## Features

* I use [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) as the Zsh framework to configure my shell. 
* Go through the [`.macos`](./.macos) file and adjust the settings to your liking. You can find much more settings at [the original script by Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) and [Kevin Suttle's macOS Defaults project](https://github.com/kevinSuttle/MacOS-Defaults).
* Check out the [`Brewfile`](./Brewfile) file and adjust the apps you want to install for your machine. Use [their search page](https://formulae.brew.sh/) to check if the app you want to install is available.
* Check out the [`aliases.zsh`](./aliases.zsh) file and add your own aliases. If you need to tweak your `$PATH` check out the [`path.zsh`](./path.zsh) file. These files get loaded in because the `$ZSH_CUSTOM` setting points to the `~/.dotfiles` directory. You can adjust the [`.zshrc`](./.zshrc) file to your liking to tweak your Oh My Zsh setup. More info about how to customize Oh My Zsh can be found [here](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization).
* I use [Mackup](https://github.com/lra/mackup) to backup/restore the application preferences. Mackup is a tool which backups your app preferences to a storage of your choice. By default it’s Dropbox but you can easily use Google Drive, iCloud or any other synced folder you want. What it does is that it copies the settings from your ~/Library folder and symlinks them from the storage folder. That way your settings stay consistent across devices. It's also very handy to restore your application's settings. Simply install your synced folder, Mackup first and then mackup restore to restore your settings.

## Prerequisites

* Install Xcode from the App Store, open it and accept the license agreement

## Installation

```
$ git clone --recursive https://github.com/edgar/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./install.sh
```
