return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    -- splash screen
    dashboard = {
      enabled = true,
      preset = {
        header = 'NVIM v' .. vim.version().major .. '.' .. vim.version().minor .. '.' .. vim.version().patch,
        keys = require 'keymap.dashboard',
      },
      sections = {
        { section = 'header' },
        { section = 'keys', gap = 1 },
      },
    },
    notifier = { enabled = true },
    git = { enabled = true },
    statuscolumn = { enabled = true },
    lazygit = { enabled = true },
    picker = { enabled = true },
  },
  keys = require 'keymap.snacks',
}
