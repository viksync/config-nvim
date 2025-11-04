return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				eslint = {
					root_dir = function(fname)
						return require("lspconfig.util").root_pattern(
							"eslint.config.js",
							"eslint.config.mjs",
							"eslint.config.cjs",
							".eslintrc.json",
							".eslintrc.js",
							".eslintrc.cjs",
							".eslintrc.yaml",
							".eslintrc.yml"
						)(fname)
					end,
					single_file_support = false,
					settings = { workingDirectories = { mode = "auto" } },
				},
			},
			setup = {
				eslint = function(_, opts)
					require("lspconfig")["eslint"].setup(vim.tbl_deep_extend("force", opts, {
						on_attach = function(client, bufnr)
							if client.name == "eslint" then
								client.server_capabilities.documentFormattingProvider = true
							elseif client.name == "vtsls" then
								client.server_capabilities.documentFormattingProvider = false
							end
						end,
					}))
				end,
			},
		},
	},
}
