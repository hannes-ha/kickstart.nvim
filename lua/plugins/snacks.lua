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
        keys = {
          { icon = ' ', key = 'e', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
          { icon = ' ', key = 'g', desc = 'Git', action = ':lua Snacks.lazygit()' },
          { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
          { icon = ' ', key = 'f', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = '󰒲 ', key = 'L', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
          { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
        },
      },
      sections = {
        { section = 'header' },
        { section = 'keys', gap = 1 },
      },
    },
    -- prettier notifications
    notifier = { enabled = true },
    -- better git blame
    git = { enabled = true },
    -- prettier number col
    statuscolumn = { enabled = true },
    -- lg integration
    lazygit = { enabled = true },
  },
  keys = {
    {
      '<leader>gb',
      function()
        Snacks.git.blame_line()
      end,
      desc = 'Git Blame Line',
    },
    {
      '<leader>nd',
      function()
        Snacks.notifier.hide()
      end,
      desc = 'Dismiss All Notifications',
    },
    {
      '<leader>lg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
  },
}
