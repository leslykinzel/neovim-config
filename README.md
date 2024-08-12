# Blackout-Neovim

Stable Neovim configuration for software development.


<img width="1440" alt="nvim_preview" src="https://github.com/user-attachments/assets/0afe505d-b4a5-4ab6-8193-26bd58fa405e">


## Prerequisites

- [x] **C Compiler**

    If you are using gcc, you might be missing some standard header files. Make sure you have [build-essentials](https://linuxize.com/post/how-to-install-gcc-on-ubuntu-20-04/) as some Linux distros may not have it pre-installed.


- [x] **LSP Dependencies**

    LSPs are managed by [Mason](https://github.com/williamboman/mason.nvim). Some LSPs require npm, python/pip, or Go to install. Check the `:MasonLog` for details about each installation.

- [x] [**NerdFonts**](https://www.nerdfonts.com/)
    
    Not mandatory, but will give you all the special icons & characters that make Neovim look cool. I am using the Caskaydia Mono Nerd Font.

## Installation

Linux / MacOS
```
git clone https://github.com/LeslyKinzel/Blackout-Neovim ~/.config/nvim/
```

Windows
```
git clone https://github.com/LeslyKinzel/Blackout-Neovim ~\AppData\Local\nvim\
```
