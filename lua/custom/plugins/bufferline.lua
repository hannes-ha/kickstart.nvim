return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {
      options = {
        show_buffer_icons = true, -- disable filetype icons for buffers
        show_buffer_close_icons = false,
        show_close_icon = false,
        diagnostics = 'nvim_lsp',
      },

      highlights = {
        fill = {
          bg = '#282C34',
        },
      },
    }
  end,
}
