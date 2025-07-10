# Neovim Config

This is a simple yet effective Neovim config with as little 
bloat as possible; stripped down to the essentials with default 
behaviour preserved or extended slightly in ways that are helpful 
and not overly intrusive.

E.g.

- `{}()[]""''` brackets & quotes auto-close.
- `CTRL-hjkl` to move selected text around. If no text is selected, the same keys will let you jump between different panes.
- `SPC-ff` to `f`ind `f`iles.
- `SPC-fb` to `f`ind open `b`uffers.
- `SPC-rg` to use ripgrep in your current directory.
- `CTRL-d` to exit terminal mode.

Shoutout to [@echasnovski](https://github.com/echasnovski) for making [mini.nvim](github.com/echasnovski/mini.nvim).

## Requirements

- **C Compiler**

    **Linux**

    Make sure you have [build-essentials](https://linuxize.com/post/how-to-install-gcc-on-ubuntu-20-04/). 
    A lot of Linux distros don't have them pre-installed. 

    **MacOS**

    Make sure you have the latest XCode command line tools installed.

    **Windows**

    WSL2 is recommended.

- [**NerdFonts**](https://www.nerdfonts.com/)

    Not really needed but these give you file icons and special glyphs that other fonts don't have.

- [**FZF**](https://github.com/junegunn/fzf)

- [**RipGrep**](https://github.com/BurntSushi/ripgrep)

## Installation

Linux / MacOS
```
git clone https://github.com/leslykinzel/neovim-config ~/.config/nvim/
```

Windows
```
git clone https://github.com/leslykinzel/neovim-config ~\AppData\Local\nvim\
```
