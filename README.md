# Neovim Config

I use this repository to back up my `~/.config/nvim/` directory across multiple systems.

## Dependencies

- [**Neovim**](https://github.com/neovim/neovim)

    Version 0.11 or newer.

- [**C Compiler**](https://ziglang.org/download/)

    If you're using gcc, you might be missing a bunch of header files. Make sure you have [build-essentials](https://linuxize.com/post/how-to-install-gcc-on-ubuntu-20-04/). A lot of Linux distros don't have them pre-installed.
    If you're on Windows, use WSL, MSYS2, or [winlibs](https://www.winlibs.com/#download-release). Or just use Zig to avoid all that nonsense.

- [**NerdFonts**](https://www.nerdfonts.com/)

- [**RipGrep**](https://github.com/BurntSushi/ripgrep)

- [**FZF**](https://github.com/junegunn/fzf)

- Package managers for LSP. (Node, Go, Cargo, etc.) Check `:MasonLog`.

## Installation

Linux / MacOS
```
git clone https://github.com/leslykinzel/neovim-config ~/.config/nvim/
```

Windows
```
git clone https://github.com/leslykinzel/neovim-config ~\AppData\Local\nvim\
```
