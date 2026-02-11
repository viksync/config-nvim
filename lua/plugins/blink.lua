return {
	{
		"saghen/blink.cmp",
		opts = {
			completion = {
				menu = {
					auto_show = false, -- no auto popup while typing
				},
				documentation = {
					auto_show = false, -- stop auto popup
					auto_show_delay_ms = 0,
				},
				list = {
					selection = {
						preselect = true, -- don't auto select first item
					},
				},
			},
			snippets = {
				preset = "default",
			},
			sources = {
				default = { "lsp", "path", "snippets" }, -- removed buffer
			},
		},
	},
}
