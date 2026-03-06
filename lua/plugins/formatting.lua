return {
	"stevearc/conform.nvim",
	opts = {
		default_format_opts = {
			timeout_ms = 3000,
			async = false,
			quiet = false,
			lsp_format = "fallback",
		},

		formatters_by_ft = {
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },
			vue = { "prettier" },
			css = { "prettier" },
			scss = { "prettier" },
			html = { "prettier" },
			yaml = { "prettier" },
			yml = { "prettier" },
			markdown = { "prettier" },
			graphql = { "prettier" },
		},
	},
}
