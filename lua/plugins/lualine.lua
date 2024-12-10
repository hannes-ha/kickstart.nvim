return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        fmt = string.lower, -- small letters in mode
        component_separators = { left = '|', right = '|' }, -- remove pointy things
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_x = { 'filetype' }, -- hide encoding and file format
      },
    }
  end,
}
