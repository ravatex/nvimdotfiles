return {
	"danymat/neogen",
	config = function()
		local config = require("neogen")
		config.setup({ snippet_engine = "luasnip" })
	end,
	-- Uncomment next line if you want to follow only stable versions
	-- version = "*"
}
