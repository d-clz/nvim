return {

  -- === Colorscheme ===
  {
    "joshdick/onedark.vim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme onedark")
    end,
  },

  -- === Statusline (lightline replacement) ===
  {
    "itchyny/lightline.vim",
    dependencies = { "joshdick/onedark.vim" },
    config = function()
      vim.g.lightline = {
        colorscheme = "onedark",
      }

      -- Transparent middle (same trick you used)
      vim.cmd([[
        let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
        let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
        let s:palette.inactive.middle = s:palette.normal.middle
        let s:palette.tabline.middle = s:palette.normal.middle
      ]])
    end,
  },

  -- === File tree (NERDTree → Neo-tree) ===
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "File tree" },
    },
  },

  -- === Distraction-free writing ===
  { "junegunn/goyo.vim", cmd = "Goyo" },
  { "junegunn/limelight.vim", cmd = "Limelight" },
  { "subnut/vim-iawriter" },

  -- === Editor helpers ===
  { "junegunn/vim-easy-align", keys = { "ga" } },
  { "jiangmiao/auto-pairs", event = "InsertEnter" },
  { "terryma/vim-multiple-cursors" },
}

