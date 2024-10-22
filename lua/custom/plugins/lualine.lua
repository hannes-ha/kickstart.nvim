return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {

      options = {
        fmt = string.lower, -- small letters in mode
        theme = 'auto',
        component_separators = { left = '|', right = '|' }, -- remove pointy things
        icons_enabled = false,
        section_separators = { left = '', right = '' },
      },
    }
  end,
}
