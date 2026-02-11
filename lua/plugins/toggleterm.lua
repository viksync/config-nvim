return {
	{
		"akinsho/toggleterm.nvim",
		cmd = "ToggleTerm",
		keys = {
			{ "<C-n>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
		},
		opts = {
			open_mapping = [[<C-n>]], -- still works for float
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
