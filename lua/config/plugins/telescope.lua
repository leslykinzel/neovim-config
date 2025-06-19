return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-tree/nvim-web-devicons',
  },
  require('telescope').setup({
    pickers = {
      find_files = {
        theme = "ivy",
        previewer = false,
        prompt_title = vim.loop.cwd()
      },
      live_grep = {
        theme = "ivy",
        previewer = false,
        prompt_title = vim.loop.cwd()
      },
      buffers = {
        theme = "ivy",
        previewer = false,
        prompt_title = "Buffers"
      }
    }
  })
}
