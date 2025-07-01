local completion = {}

function completion.setUpCustomCompletions()
  local cmp = require 'cmp'

  cmp.setup.filetype({ 'sql' }, {
    sources = {
      { name = 'vim-dadbod-completion' },
      { name = 'buffer' },
    },
  })
end

return completion
