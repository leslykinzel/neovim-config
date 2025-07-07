-- git@github.com/leslykinzel/neovim-config

local path_package = vim.fn.stdpath("data") .. "/site/"
local mini_path = path_package .. "pack/deps/start/mini.nvim"

if not vim.loop.fs_stat(mini_path) then
  vim.cmd("echo 'Installing `mini.nvim`' | redraw")
  local clone_cmd = { 
    "git", "clone", "--filter=blob:none",
    "git@github.com/echasnovski/mini.nvim", mini_path
  }
  vim.fn.system(clone_cmd)
  vim.cmd("packadd mini.nvim | helptags ALL")
  vim.cmd("echo 'Installed `mini.nvim`' | redraw")
end

-- Set up "mini.deps" (customize to your liking)
require("mini.deps").setup({ path = { package = path_package } })

local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

now(function()
  -- General settings
  vim.g.mapleader = " "
  vim.opt.termguicolors = true
  vim.cmd("colorscheme default")
  vim.opt.updatetime = 250
  vim.opt.undofile = true
  vim.opt.breakindent = true
  vim.opt.cursorline = true
  vim.opt.number = true
  vim.opt.mouse = "a"
end)

-- mini.notify
now(function()
  require("mini.notify").setup()
  vim.notify = require("mini.notify").make_notify()
end)

-- mini.icons
now(function() require("mini.icons").setup({
    style = "glyph"
  })
end)

-- mini.statusline
now(function() require("mini.statusline").setup() end)

-- treesitter
later(function()
  add({
    source = "nvim-treesitter/nvim-treesitter",
    checkout = "master",
    monitor = "main",
    hooks = { post_checkout = function() vim.cmd("TSUpdate") end },
  })
  require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "vimdoc" },
    highlight = { enable = true },
  })
end)

-- mini.pairs
later(function() require("mini.pairs").setup() end)

-- mini.cursorword
later(function() require("mini.cursorword").setup() end)

-- mini.move
later(function() require("mini.move").setup({
  mappings = {
    left = "<C-h>",
    right = "<C-l>",
    down = "<C-j>",
    up = "<C-k>",
    options = {
      reindent_linewise = true,
    }
  }
}) end)

-- mini.git
later(function() require("mini.git").setup() end)

-- scheduled for startup performance
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

-- Default Indentation
vim.opt.expandtab = true
vim.opt.scrolloff = 4
vim.opt.cmdheight = 1

-- Whitespace
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Window splits
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Exit Terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- FZF
vim.keymap.set("n", "<leader>ff", "<CMD>FZF<CR>")
