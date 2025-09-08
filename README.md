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
  
    **MacOS**

    Make sure you have the latest XCode command line tools installed.

    **Windows**

    Make sure you have MSVC & Visual Studio build tools.

- [**NerdFonts**](https://www.nerdfonts.com/)

   Set one of these as your terminal's font for icon & glyph support.

- [**FZF**](https://github.com/junegunn/fzf)

   The most based file picker.

- [**RipGrep**](https://github.com/BurntSushi/ripgrep)

   Grep but better, and inside your editor.

## Installation

Linux / MacOS
```
git clone https://github.com/leslykinzel/neovim-config ~/.config/nvim/
```

Windows
```
git clone https://github.com/leslykinzel/neovim-config %USERPROFILE%\AppData\Local\nvim\
```
