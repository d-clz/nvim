return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      {
        "williamboman/mason.nvim",
        cmd = "Mason",
        opts = {
          ui = { border = "rounded" },
        },
      },
      {
        "williamboman/mason-lspconfig.nvim",
      },
    },
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
      local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
      local is_linux = vim.loop.os_uname().sysname == "Linux"

      require("mason").setup()

      -- Global servers
      local servers = {
        gopls = {},
        pyright = {},
        ts_ls = {},
        yamlls = {
          settings = {
            yaml = {
              schemas = {
                kubernetes = "*.yaml",
                ["https://json.schemastore.org/github-workflow.json"] =
                  ".github/workflows/*",
              },
            },
          },
        },
      }

      -- OS-specific servers
      if is_linux then
        servers.bashls = {}
        servers.clangd = {}
      end

      if is_windows then
        servers.powershell_es = {}
      end

      -- Mason install listconfig.capabilities = capabilities
      local ensure = vim.tbl_keys(servers)

      require("mason-lspconfig").setup({
        ensure_installed = ensure,
      })

      -- Neovim 0.11 native LSP registration
      for name, config in pairs(servers) do
	config.capabilities = capabilities
        vim.lsp.config(name, config)
      end
    end,
  },
}

