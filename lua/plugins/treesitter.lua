return {

  --Treesitter: Syntax highlighting used in others
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"html"},
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
