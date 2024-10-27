return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gd', ':Gvdiffsplit!<CR>')
    vim.keymap.set('n', '<leader>ml', '<cmd>diffget //2<CR>')
    vim.keymap.set('n', '<leader>mr', '<cmd>diffget //3<CR>')
  end,
}
