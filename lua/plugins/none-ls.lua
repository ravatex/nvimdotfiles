--IF YOU WANT PACKAGE CHECK THAT IT IS INCLUDED
--IN 'https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md'
--IF NOT DO YOUR MAGIN FROM:
--'https://github.com/nvimtools/none-ls.nvim/blob/main/doc/MAIN.md'
return {
  "nvimtools/none-ls.nvim",

  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.diagnostics.cppcheck,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
  requires = { "nvim-lua/plenary.nvim" },
}
