return {
  { icon = ' ', key = 'e', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
  { icon = ' ', key = 'g', desc = 'Git', action = ':lua Snacks.lazygit()' },
  { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
  { icon = ' ', key = 'f', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
  { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
  { icon = '󰒲 ', key = 'L', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
  { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
}
