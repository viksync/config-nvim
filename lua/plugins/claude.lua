return {
	"coder/claudecode.nvim",
	dependencies = { "folke/snacks.nvim" },
	config = true,
	keys = {
		{
			"<leader>ac",
			function()
				local cc = require("claudecode")
				if cc.is_claude_connected() then
					vim.fn.jobstart({ "zellij", "action", "focus-next-pane" })
				else
					local port = require("claudecode.server.init").get_status().port
					if not port then
						vim.notify("claudecode.nvim server not running", vim.log.levels.ERROR)
						return
					end
					local env = "CLAUDE_CODE_SSE_PORT=" .. port .. " ENABLE_IDE_INTEGRATION=true"
					vim.fn.jobstart({
						"zellij",
						"run",
						"--direction",
						"right",
						"--close-on-exit",
						"--name",
						"claude-code",
						"--",
						"sh",
						"-c",
						env .. " claude",
					})
				end
			end,
			desc = "Open Claude Code in new Zellij pane",
		},
	},
}
