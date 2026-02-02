-- Plugin specs live here (lazy.nvim)
-- Currently empty on purpose
-- We will migrate plugins one-by-one from vim-plug

return {
  require("plugins.treesitter"),
  require("plugins.lsp"),
  require("plugins.cmp"),
  require("plugins.filetree"),
}

