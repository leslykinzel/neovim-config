# Neovim Config

I use this repository as a way of backing up and syncing my `~/.config/nvim/` directory across multiple systems.

## Prerequisites

### Mandatory

- **C Compiler**

    If you're using gcc, you might be missing some header files. Make sure you have [build-essentials](https://linuxize.com/post/how-to-install-gcc-on-ubuntu-20-04/). A lot of Linux distros don't have it pre-installed.
    If you're on Windows & not using WSL for whatever reason, [winlibs](https://www.winlibs.com/#download-release) worked for me.

### Non-Mandatory

- [**NerdFonts**](https://www.nerdfonts.com/)
    
    Any NerdFont will give your terminal access to a lot of special icons.

- [**RipGrep**](https://github.com/BurntSushi/ripgrep)

    Required for live grep functionality using Telescope.

## Installation

Linux / MacOS
```
git clone https://github.com/leslykinzel/neovim-config ~/.config/nvim/
```

Windows
```
git clone https://github.com/leslykinzel/neovim-config ~\AppData\Local\nvim\
```
