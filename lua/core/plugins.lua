-- https://github.com/wbthomason/packer.nvim must be set up 
-- for this config to work. Run the command :PackerSync to
-- install, update, or remove any plugins that are already
-- installed.
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'blazkowolf/gruber-darker.nvim'
    use 'wbthomason/packer.nvim'
    use 'stevearc/oil.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use {
        'altermo/ultimate-autopair.nvim',
        branch='v0.6'
    }
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }
    use 'lewis6991/gitsigns.nvim'
    if packer_bootstrap then
        require('packer').sync()
    end
end)
