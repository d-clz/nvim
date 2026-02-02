return {
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 32,
        },
        filters = {
          dotfiles = false,
        },
        renderer = {
          icons = {
            show = {
              git = true,
              folder = true,
              file = true,
            },
          },
        },
      })
    end,
  },
}

