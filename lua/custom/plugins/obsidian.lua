-- Required for UI features to work. See https://github.com/epwalsh/obsidian.nvim/issues/286.
vim.opt.conceallevel = 2

return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  event = {
    'BufReadPre ' .. vim.fn.expand '~' .. '/obsidian/**/*.md',
    'BufNewFile ' .. vim.fn.expand '~' .. '/obsidian/**/*.md',
  },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = 'external-brain',
        path = '~/obsidian/external-brain',
      },
    },

    -- see below for full list of options 👇
  },
}
