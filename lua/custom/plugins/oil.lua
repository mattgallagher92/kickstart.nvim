return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup {
      skip_confirm_for_simple_edits = true,
      use_default_keymaps = false,
      keymaps = {
        ['g?'] = 'actions.show_help',
        ['<CR>'] = 'actions.select',
        ['<C-S-r>'] = 'actions.refresh',
        ['<C-c>'] = 'actions.close',
        ['<C-p>'] = 'actions.preview',
        ['<C-v>'] = { 'actions.select', opts = { vertical = true }, desc = 'Open the entry in a vertical split' },
        ['-'] = 'actions.parent',
        ['_'] = 'actions.open_cwd',
        ['`'] = 'actions.cd',
        ['gs'] = 'actions.change_sort',
        ['gx'] = 'actions.open_external',
        ['gy'] = 'actions.yank_entry',
        ['g.'] = 'actions.toggle_hidden',
        ['g\\'] = 'actions.toggle_trash',
      },
      view_options = {
        show_hidden = true,
        -- This function defines what is considered a "hidden" file
        is_hidden_file = function(name, bufnr)
          return vim.startswith(name, '.')
        end,
        is_always_hidden = function(name, bufnr)
          return name == '..'
        end,
      },
    }

    local actions = require 'oil.actions'
    vim.keymap.set('n', '<leader>-', actions.parent.callback, { desc = '[-] Open parent dir in oil' })
  end,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
