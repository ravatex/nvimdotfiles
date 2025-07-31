return {
 --[[ "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    local config = require("catppuccin")
    config.setup({ flavour = "frappe" })
    vim.cmd.colorscheme "catppuccin"

  end,]]--
}
