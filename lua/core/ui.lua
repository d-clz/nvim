-- lua/core/ui.lua
-- Core UI behavior (NO plugins here)

local o = vim.o
local wo = vim.wo
local g = vim.g

-- === Colors & Rendering ===
o.termguicolors = true
o.background = "dark"

-- === Statusline / Command UI ===
o.laststatus = 3          -- global statusline
o.cmdheight = 1
o.showmode = false        -- let statusline handle modes

-- === Window UI ===
wo.signcolumn = "yes"
wo.cursorline = true
o.scrolloff = 8
o.sidescrolloff = 8
o.splitright = true
o.splitbelow = true

-- === Line Numbers ===
wo.number = true
wo.relativenumber = true

-- === Mouse & UI Interaction ===
o.mouse = "a"
o.clipboard = "unnamedplus"

-- === Completion UI ===
o.completeopt = "menu,menuone,noselect"

-- === Diagnostics UI ===
vim.diagnostic.config({
  virtual_text = false,   -- less noisy
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
  },
})

-- === Floating windows ===
vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })

vim.lsp.handlers["textDocument/signatureHelp"] =
  vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

-- === UI polish ===
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1 -- disable netrw (we’ll use a tree plugin later)

