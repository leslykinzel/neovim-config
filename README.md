# Blackout-nvim
 My neovim config

## Setup

Plugin manager: https://github.com/wbthomason/packer.nvim

### Windows

    C:\Users\name\AppData\Local\nvim\<files-go-here>

### Linux / MacOS

    ~/.config/nvim/<files-go-here>

## Plugins

- https://github.com/nvim-telescope/telescope.nvim
- https://github.com/nvim-treesitter/nvim-treesitter
*Treesitter needs a C compiler. I use this on Windows: https://winlibs.com/#download-release
- https://github.com/dasupradyumna/midnight.nvim
- https://github.com/altermo/ultimate-autopair.nvim
- https://github.com/VonHeikemen/lsp-zero.nvim

In nvim, navigate to packer.lua use :so to source the file and then run :PackerSync.
If any other scripts like remap or lsp are not working on the first startup you just need to navigate to the file and use :so
