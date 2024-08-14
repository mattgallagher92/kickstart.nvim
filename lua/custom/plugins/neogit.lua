return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'sindrets/diffview.nvim', opts = { view = { merge_tool = { layout = 'diff4_mixed' } } } },

    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('neogit').setup {}
    require('which-key').add {
      { '<leader>g', group = '[G]it' },
    }
    vim.keymap.set('n', '<leader>gs', '<cmd>Neogit<CR>', { desc = '[G]it [S]tatus' })
  end,
}
