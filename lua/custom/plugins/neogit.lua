return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'sindrets/diffview.nvim', opts = { view = { merge_tool = { layout = 'diff4_mixed' } } } },

    'nvim-telescope/telescope.nvim',
  },
  opts = {},
  keys = { { '<leader>gs', vim.cmd.Neogit, desc = '[G]it [S]tatus' } },
}
