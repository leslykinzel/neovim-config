-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    -- Smart brackets
    use{
        'altermo/ultimate-autopair.nvim',
        event={'InsertEnter','CmdlineEnter'},
        branch='v0.6', --recomended as each new version will have breaking changes
        config=function ()
            require('ultimate-autopair').setup({
                --Config goes here
                profile='default',
                map=true,
                cmap=false
            })
        end,
    }

    -- My one true love <3
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    -- Amazing colour scheme
    use ({
        'dasupradyumna/midnight.nvim',
        as = 'midnight',
        config = function()
            vim.cmd('colorscheme midnight')
        end
    })

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')

end)
