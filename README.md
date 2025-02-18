# Neovim Config

I use this repository to back up my `~/.config/nvim/` directory across multiple systems.

## Prerequisites

### Mandatory

- **Neovim**

    0.10 or higher.

- **C Compiler**

    If you're using gcc, you might be missing some header files. Make sure you have [build-essentials](https://linuxize.com/post/how-to-install-gcc-on-ubuntu-20-04/). A lot of Linux distros don't have it pre-installed.
    If you're on Windows I recommend using WSL, MSYS2, or [winlibs](https://www.winlibs.com/#download-release).

### Non-Mandatory

- [**NerdFonts**](https://www.nerdfonts.com/)
    
    Any NerdFont will give your terminal access to a lot of special icons.

- [**Lua Language Server**](https://luals.github.io/wiki/)

    Neovim will complain if you don't have this.

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
