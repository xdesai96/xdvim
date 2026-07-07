return {
	"nvim-mini/mini.sessions",
	event = "VeryLazy",
	opts = {
		directory = vim.fn.stdpath("data") .. "/sessions",
		force = { delete = true, read = false, write = true },
		file = "session.vim",
		autowrite = true,
	},
	keys = {
		{
			"<leader>ss",
			mode = "n",
			function()
				local sessions = require("mini.sessions")
				local cwd = vim.fn.getcwd()

				local folder_name = vim.fn.fnamemodify(cwd, ":t")
				local hash = string.sub(vim.fn.sha256(cwd), 1, 5)

				local name = folder_name .. "-" .. hash
				sessions.write(name)
			end,
			desc = "Save session",
		},
		{
			"<leader>sl",
			mode = "n",
			function()
				require("mini.sessions").select()
			end,
			desc = "Load session",
		},
		{
			"<leader>sr",
			mode = "n",
			function()
				require("mini.sessions").restart()
			end,
			desc = "Restart session",
		},
		{
			"<leader>sd",
			mode = "n",
			function()
				require("mini.sessions").select("delete")
			end,
			desc = "Delete session",
		},
	},
}
