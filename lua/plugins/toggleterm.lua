return {
	{
		"akinsho/toggleterm.nvim",
		cmd = "ToggleTerm",
		keys = {
			{ "<leader>j", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
			-- { "<leader>v", "<cmd>ToggleTerm direction=vertical size=60<cr>", desc = "Vertical terminal" },
			-- { "<leader>h", "<cmd>ToggleTerm direction=horizontal size=15<cr>", desc = "Horizontal terminal" },
		},
		opts = {
			open_mapping = [[<leader>j]], -- still works for float
			direction = "float", -- default
			shade_filetypes = {},
			hide_numbers = true,
			insert_mappings = true,
			terminal_mappings = true,
			start_in_insert = true,
			close_on_exit = true,
		},
	},
}
