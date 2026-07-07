return {
	{ "nvim-mini/mini.ai", event = "VeryLazy", opts = {} },
	{ "nvim-mini/mini.move", event = "VeryLazy", opts = {} },
	{ "nvim-mini/mini.operators", event = "VeryLazy", opts = {} },
	{
		"nvim-mini/mini.pairs",
		event = "VeryLazy",
		opts = { modes = { insert = true, command = true, terminal = false }, markdown = true, skip_unbalanced = true },
	},
	{ "nvim-mini/mini.surround", event = "VeryLazy", opts = {} },
	{
		"nvim-mini/mini.completion",
		event = "VeryLazy",
		opts = {},
	},
	{
		"nvim-mini/mini.snippets",
		event = "VeryLazy",
		dependencies = {
			{ "rafamadriz/friendly-snippets" },
			{ "L3MON4D3/LuaSnip" },
		},
	},
	{
		"nvim-mini/mini.files",
		opts = {
			content = {
				prefix = function() end,
			},
			windows = {
				max_number = 3,
				width_focus = 30,
			},
			mappings = {
				go_in_plus = "l",
				go_in = "L",
			},
		},
		keys = {
			{
				"<leader>e",
				function()
					if not require("mini.files").close() then
						require("mini.files").open(nil)
					end
				end,
				desc = "Explorer",
			},
		},
	},
}
