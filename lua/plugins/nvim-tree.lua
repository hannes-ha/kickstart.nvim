local function my_on_attach(bufnr)
  local api = require 'nvim-tree.api'

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

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

  vim.keymap.set('n', 'l', edit_or_open, opts 'Edit or open')
  vim.keymap.set('n', 'L', vsplit_preview, opts 'Preview in split')
  vim.keymap.set('n', 'h', api.tree.close, opts 'Close')
  vim.keymap.set('n', 'H', api.tree.collapse_all, opts 'Collapse all')
end

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    -- global
    vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<cr>', { silent = true, noremap = true })

    -- on_attach

    require('nvim-tree').setup {
      on_attach = my_on_attach,
    }
  end,
}
