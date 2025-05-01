return {
  'ravitemer/mcphub.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim', -- Required for Job and HTTP requests
  },
  cmd = 'MCPHub', -- lazy load
  build = 'bundled_build.lua',
  opts = {
    use_bundled_binary = true,
  },
}
