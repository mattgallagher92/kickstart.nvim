return {
  'ionide/Ionide-vim',
  ft = { 'fsharp', 'fsharp_project' },
  enabled = true,
  init = function()
    -- fsautocomplete returns invalid data, which Neovim doesn't handle well, causing the editor to lock up.
    -- (See https://github.com/mattgallagher92/fsac-semantic-tokens-bug-repro).
    -- Workaround from https://github.com/neovim/neovim/issues/36257.
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.server_capabilities then
          client.server_capabilities.semanticTokensProvider = nil
        end
      end,
    })
  end,
}
