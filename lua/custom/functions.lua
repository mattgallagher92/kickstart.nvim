local functions = {}

function functions.centreBuffer()
  vim.cmd 'wincmd o'
  vim.cmd 'vsplit'
  vim.cmd 'vsplit'
  vim.cmd 'let side_split_width = (&columns - 120) / 2'
  vim.cmd 'execute "vertical resize " . side_split_width'
  vim.cmd 'enew'
  vim.cmd 'wincmd w'
  vim.cmd 'wincmd w'
  vim.cmd 'execute "vertical resize " . side_split_width'
  vim.cmd 'enew'
  vim.cmd 'wincmd W'
end

function functions.applyCustomKeymaps()
  require('which-key').add {
    { '<leader>b', group = '[B]uffer' },
  }
  vim.keymap.set('n', '<leader>bc', functions.centreBuffer, { desc = '[B]uffer [c]entre' })
end

return functions
