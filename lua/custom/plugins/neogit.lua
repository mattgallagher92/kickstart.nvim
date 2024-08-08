return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    require('neogit').setup {}
    require('which-key').add {
      { '<leader>g', group = '[G]it' },
    }
    vim.keymap.set('n', '<leader>gs', '<cmd>Neogit<CR>', { desc = '[G]it [S]tatus' })
  end,
}
