-- =========================
-- Neovim entrypoint (authoritative)
-- =========================

-- Core configs
require("core.options")
require("core.keymaps")
require("core.ui")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.runtimepath:prepend(lazypath)

-- Init lazy.nvim
local ok, lazy = pcall(require, "lazy")
if not ok then
  error("lazy.nvim failed to load")
end

lazy.setup("plugins")


