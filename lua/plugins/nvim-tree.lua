return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local api = require 'nvim-tree.api'

    local function edit_or_open()
      local node = api.tree.get_node_under_cursor()

      if node.nodes ~= nil then
        -- expand or collapse folder
        api.node.open.edit()
      else
        -- open file
        api.node.open.edit()
        -- Close the tree if file was opened
        api.tree.close()
      end
    end

    -- open as vsplit on current node
    local function vsplit_preview()
      local node = api.tree.get_node_under_cursor()

      if node.nodes ~= nil then
        -- expand or collapse folder
        api.node.open.edit()
      else
        -- open file as vsplit
        api.node.open.vertical()
      end

      -- Finally refocus on tree if it was lost
      api.tree.focus()
    end
    -- global
    vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<cr>', { silent = true, noremap = true })

    -- on_attach
    vim.keymap.set('n', 'l', edit_or_open)
    vim.keymap.set('n', 'L', vsplit_preview)
    vim.keymap.set('n', 'h', api.tree.close)
    vim.keymap.set('n', 'H', api.tree.collapse_all)

    require('nvim-tree').setup {}
  end,
}
