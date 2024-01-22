# Blackout-nvim
 My neovim config

 Plugin manager: https://github.com/wbthomason/packer.nvim

### Windows

    C:\Users\name\AppData\Local\nvim\<files-go-here>

### Linux / MacOS

    ~/.config/nvim/<files-go-here>

## Setup

You will need a C compiler for treesitter. I use this on Windows: https://winlibs.com/#download-release

In nvim, navigate to packer.lua use :so to source the file and then run :PackerSync.
If any other scripts like remap or lsp are not working on the first startup you just need to navigate to the file and use :so
