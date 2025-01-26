return {
  'lewis6991/gitsigns.nvim',
  opts = {
    current_line_blame = true,
    on_attach = function(bufnr)
      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end
      local gitsigns = require 'gitsigns'
      map('n', '<leader>hn', function()
        gitsigns.nav_hunk 'next'
      end)
      map('n', '<leader>hs', gitsigns.stage_hunk)
      map('n', '<leader>hr', gitsigns.reset_hunk)
      map('v', '<leader>hs', function()
        gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end)
      map('v', '<leader>hr', function()
        gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end)
      map('n', '<leader>hS', gitsigns.stage_buffer)
      map('n', '<leader>hu', gitsigns.undo_stage_hunk)
      map('n', '<leader>hR', gitsigns.reset_buffer)
      map('n', '<leader>hp', gitsigns.preview_hunk)
      map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
      map('n', '<leader>td', gitsigns.toggle_deleted)
    end,
  },
}
