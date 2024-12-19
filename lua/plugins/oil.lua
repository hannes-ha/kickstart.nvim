return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    keymaps = {
      ['<C-h>'] = { 'actions.toggle_hidden', opts = { horizontal = true } },
    },
  },
  keys = {
    {
      '<leader>-',
      '<CMD>Oil --float<CR>',
      mode = { 'n' },
    },
  },
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
}
