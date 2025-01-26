return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()
    require('mini.icons').setup {}
    require('mini.pairs').setup {}
    require('mini.comment').setup {}

    -- file browser
    require('mini.files').setup {
      options = {
        use_as_default_explorer = false,
      },
    }

    local closeOrRevealCurrent = function()
      local _ = MiniFiles.close() or MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
      MiniFiles.reveal_cwd()
    end
    vim.keymap.set('n', '<leader>e', closeOrRevealCurrent, { desc = 'Open file browser' })

    -- statusline
    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
