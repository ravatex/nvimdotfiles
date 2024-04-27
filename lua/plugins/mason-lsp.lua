return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "pyright" },
      })
    end,
  },
  {
    --[[
    --
    --python = {
						analysis = {
							diagnosticSeverityOverrides = { "reportOptionalMemberAccess", "false" },
						},
					},
    --
    --
    --]]
    --
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      --HOLY SHIT CONFIG FILE GOES TO UP UP DIRECTORY SEE WHICH PARENTDIR
      --FROM GOING TO PYTHON FILE LspInfo and checking DIRECTORY
      --THERE YOU WILL PUT pyrightconfig.json or smth to act (HAVENT TRIED IT YET)
      --FUCK YOU PYRIGHT
      lspconfig.pyright.setup({
        settings = {
          python = {
            analysis = {
              diagnosticSeverityOverrides = {
                reportOptionalMemberAccess = false,
                reportOptionalSubscript = false,
              },
            },
          },
        },
      })
      lspconfig.clangd.setup({})
      lspconfig.texlab.setup({})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
    end,
  },
}
