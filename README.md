# Neovim Config

Stable Neovim configuration for software development.

![nvim-preview](https://github.com/user-attachments/assets/d0de6ab3-cdb7-464f-947c-07ab4da1a4ed)

## Prerequisites

- **C Compiler**

    If you're using gcc, you might be missing some header files. Make sure you have [build-essentials](https://linuxize.com/post/how-to-install-gcc-on-ubuntu-20-04/) as a lot of Linux distros don't have it pre-installed.
    If you're on Windows & not using WSL for whatever reason, [winlibs](https://www.winlibs.com/#download-release) worked for me.

- **LSP Dependencies**

    LSPs are managed by [Mason](https://github.com/williamboman/mason.nvim). Some LSPs need npm, Go, or some other package manager. Check `:MasonLog` for details about each installation.

- [**NerdFonts**](https://www.nerdfonts.com/)
    
    Not mandatory, but will give your terminal all the special icons & characters that make Neovim look cool. Mono fonts are best.

## Installation

Linux / MacOS  / WSL
```
git clone https://github.com/LeslyKinzel/neovim-config ~/.config/nvim/
```

Windows
```
git clone https://github.com/LeslyKinzel/neovim-config ~\AppData\Local\nvim\
```
