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
				ensure_installed = {
					"hls",
					"asm_lsp",
					"lemminx",
					"jdtls",
					"rust_analyzer",
					"lua_ls",
					"clangd",
					"pyright",
					"ts_ls",
				},
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
			lspconfig.ts_ls.setup({})
			lspconfig.lemminx.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.asm_lsp.setup({
				settings = {
					opts = { assemblers = { gas = true }, diagnostics = true, default_diagnostics = true },
					instruction_sets = { x86 = false, x86_64 = true },
					filetypes = { "asm", "s", "S" },
				},
			})
			lspconfig.clangd.setup({})
			lspconfig.texlab.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.hls.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
		end,
	},
}
