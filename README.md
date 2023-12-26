# blackout-nvim
 minimalist neovim config

## Setup

Plugin manager: https://github.com/wbthomason/packer.nvim

### Windows

    C:\Users\name\AppData\Local\nvim\<files-go-here>

### Linux / MacOS

    ~/.config/nvim/<files-go-here>

## Plugins

- https://github.com/nvim-telescope/telescope.nvim
- https://github.com/nvim-treesitter/nvim-treesitter
  ^ Treesitter needs a C compiler. I use this on Windows: https://winlibs.com/#download-release
- https://github.com/dasupradyumna/midnight.nvim

In nvim, navigate to packer.lua use :so to source the file and then run :PackerSync. 
If any other scripts are not working on the first startup you just need to navigate to it and use :so 
