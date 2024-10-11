return {
  'navarasu/onedark.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.cmd.colorscheme 'onedark'
    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
    require('onedark').load()
  end,
}
