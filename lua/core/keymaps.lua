local map = vim.keymap.set

-- IDE mode: toggle file tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })

-- Focus mode: close tree & distractions
map("n", "<leader>f", function()
  vim.cmd("NvimTreeClose")
  vim.opt.relativenumber = false
end)

