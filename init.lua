-- multi-file configs are for troglodytes.

local path_package = vim.fn.stdpath("data") .. "/site/"
local mini_path = path_package .. "pack/deps/start/mini.nvim"

if not vim.loop.fs_stat(mini_path) then
  local clone_cmd = { 
    "git", "clone", "--filter=blob:none",
    "git@github.com/echasnovski/mini.nvim", mini_path
  }
  vim.fn.system(clone_cmd)
  vim.cmd("packadd mini.nvim | helptags ALL")
end

-- mini.deps (plugin managr)
require("mini.deps").setup({ path = { package = path_package } })

local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

now(function()
  -- General settings
  vim.g.mapleader       = " "
  vim.opt.termguicolors = true
  vim.opt.scrolloff     = 8
  vim.opt.cmdheight     = 1
  vim.opt.updatetime    = 250
  vim.opt.undofile      = true
  vim.opt.breakindent   = true
  vim.opt.cursorline    = true
  vim.opt.number        = true
  vim.opt.showmode      = false
  vim.opt.mouse         = "a"
  vim.opt.cmdwinheight  = 15
  -- Default Indentation
  vim.opt.tabstop = 4
  vim.opt.shiftwidth = 4
  vim.opt.expandtab = true
  -- Whitespace
  vim.opt.list = true
  vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
  -- Window splits
  vim.opt.splitright = true
  vim.opt.splitbelow = true
end)

-- mini.icons
now(function() require("mini.icons").setup() end)

-- mini.statusline
now(function() require("mini.statusline").setup() end)

-- mini.pairs
later(function() require("mini.pairs").setup() end)

-- mini.cursorword
later(function() require("mini.cursorword").setup() end)

-- mini.notify
later(function()
  require("mini.notify").setup()
  vim.notify = require("mini.notify").make_notify()
end)

-- mini.move
later(function() require("mini.move").setup({
  mappings = {
    left  = "<C-h>",
    right = "<C-l>",
    down  = "<C-j>",
    up    = "<C-k>",
    options = {
      reindent_linewise = true,
    }
  }
}) end)

-- mini.git
later(function() require("mini.git").setup() end)

-- Scheduled for startup performance
later(function() 
  vim.opt.clipboard = "unnamedplus"
end)

-- Treesitter
later(function()
  add({
    source   = "nvim-treesitter/nvim-treesitter",
    checkout = "master",
    monitor  = "main",
    hooks = { 
      post_checkout = function() 
        vim.cmd("TSUpdate")
      end 
    },
  })
  require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "vimdoc", },
    highlight = { enable = true },
  })
end)

-- Colorscheme
later(function()
  add("no-clown-fiesta/no-clown-fiesta.nvim")
  vim.cmd("colorscheme no-clown-fiesta")
end)

-- FZF
later(function() 
  add("junegunn/fzf.vim")
  add("junegunn/fzf")
  vim.env.FZF_DEFAULT_OPTS = "--no-preview"
  vim.g.fzf_layout = { window = "15new" }
  vim.g.fzf_preview_window = {}
  vim.keymap.set("n", "<leader>ff", "<CMD>Files<CR>")
  vim.keymap.set("n", "<leader>fb", "<CMD>Buffers<CR>")
  vim.keymap.set("n", "<leader>rg", "<CMD>Rg<CR>")
end)

-- Commands and shortcuts
later(function() 
  -- Common typos
  vim.api.nvim_create_user_command("Q", function() vim.cmd("q") end, {})
  vim.api.nvim_create_user_command("W", function() vim.cmd("w") end, {})
  vim.api.nvim_create_user_command("WQ", function() vim.cmd("wq") end, {})
  -- Navigating window splits
  vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
  vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
  vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
  vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
  -- Terminal mode
  vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
  vim.keymap.set("t", "<C-d>", "exit<CR>")
  -- Disable search highlights
  vim.keymap.set("n", "<Esc>", "<CMD>noh<CR>", { silent = true })
end)
