return {
	{
		"ibhagwan/fzf-lua",
		event = "VeryLazy",
		config = function()
			local fzf = require("fzf-lua")
			fzf.setup({ "max-perf" })
			fzf.register_ui_select()
		end,
		keys = {
			{ "<leader>ce", "<cmd>FzfLua lsp_declarations<cr>", desc = "Find declarations" },
			{
				"<leader>ca",
				mode = { "v", "n" },
				"<cmd>FzfLua lsp_code_actions<cr>",
				desc = "Code actions",
			},
			{ "<leader>cd", "<cmd>FzfLua lsp_definitions<cr>", desc = "Find definitions" },
			{ "<leader>ci", "<cmd>FzfLua lsp_implementations<cr>", desc = "Find implementations" },
			{ "<leader>cr", "<cmd>FzfLua lsp_references<cr>", desc = "Find references" },
			{ "<leader>ct", "<cmd>FzfLua lsp_typedefs<cr>", desc = "Find type definitions" },
			{ "<leader>cxw", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace diagnostics" },
			{ "<leader>cxd", "<cmd>FzfLua diagnostics_document<cr>", desc = "Document diagnostics" },
			{ "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Find buffers" },
			{ "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find files" },
			{ "<leader>fo", "<cmd>FzfLua oldfiles<cr>", desc = "Find old files" },
			{ "<leader>fr", "<cmd>FzfLua resume<cr>", desc = "Resume search" },
			{ "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Find live grep" },
			{ "<leader>fw", "<cmd>FzfLua grep_cword<cr>", desc = "Find word under cursor" },
			{ "<leader>fc", "<cmd>FzfLua commands<cr>", desc = "Find commands" },
			{ "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "Find keymaps" },
			{ "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Find help tags" },
			{ "<leader>ft", "<cmd>FzfLua colorschemes<cr>", desc = "Find colorschemes" },

			{ "<leader>gk", "<cmd>FzfLua git_bcommits<cr>", desc = "Current buffer git commits" },
			{ "<leader>gb", "<cmd>FzfLua git_branches<cr>", desc = "Git branches" },
			{ "<leader>gc", "<cmd>FzfLua git_commits<cr>", desc = "Git commits" },
			{ "<leader>gf", "<cmd>FzfLua git_files<cr>", desc = "Git files" },
			{ "<leader>gs", "<cmd>FzfLua git_status<cr>", desc = "Git status" },
		},
	},
}
