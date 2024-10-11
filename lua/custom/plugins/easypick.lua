return {
  'axkirillov/easypick.nvim',
  requires = 'nvim-telescope/telescope.nvim',
  config = function()
    local easypick = require 'easypick'

    -- only required for the example to work
    local get_default_branch = "git rev-parse --symbolic-full-name refs/remotes/origin/HEAD | sed 's!.*/!!'"
    local base_branch = vim.fn.system(get_default_branch) or 'main'

    -- [s]ource [c]ontrol
    vim.keymap.set('n', '<leader>sc', ':Easypick changed_files<CR>')

    easypick.setup {
      pickers = {
        -- diff current branch with base_branch and show files that changed with respective diffs in preview
        {
          name = 'changed_files',
          command = 'git diff --name-only $(git merge-base HEAD ' .. base_branch .. ' )',
          previewer = easypick.previewers.branch_diff { base_branch = base_branch },
        },
      },
    }
  end,
}
