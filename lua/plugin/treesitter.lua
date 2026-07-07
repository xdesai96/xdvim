return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = "LspAttach",
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"diff",
				"html",
				"javascript",
				"jsdoc",
				"json",
				"lua",
				"luadoc",
				"luap",
				"markdown",
				"markdown_inline",
				"printf",
				"python",
				"query",
				"regex",
				"toml",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
				"xml",
				"yaml",
			},
		},
		dependencies = {
			{
				"nvim-treesitter/nvim-treesitter-textobjects",
				opts = {
					select = {
						lookahead = true,
						selection_modes = {
							["@parameter.outer"] = "v",
							["@function.outer"] = "V",
						},
						include_surrounding_whitespace = false,
					},
				},
			},
		},
		keys = {
			{
				"am",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects")
				end,
				desc = "Select function outer",
			},
			{
				"im",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects")
				end,
				desc = "Select function inner",
			},
			{
				"ac",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@class.outer", "textobjects")
				end,
				desc = "Select class outer",
			},
			{
				"ic",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@class.inner", "textobjects")
				end,
				desc = "Select class inner",
			},
			{
				"af",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@call.outer", "textobjects")
				end,
				desc = "Select call outer",
			},
			{
				"if",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@call.inner", "textobjects")
				end,
				desc = "Select call inner",
			},
			{
				"ad",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@conditional.outer", "textobjects")
				end,
				desc = "Select conditional outer",
			},
			{
				"id",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@conditional.inner", "textobjects")
				end,
				desc = "Select conditional inner",
			},
			{
				"al",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@loop.outer", "textobjects")
				end,
				desc = "Select loop outer",
			},
			{
				"il",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@loop.inner", "textobjects")
				end,
				desc = "Select loop inner",
			},
			{
				"av",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@assignment.outer", "textobjects")
				end,
				desc = "Select assignment outer",
			},
			{
				"iv",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@assignment.inner", "textobjects")
				end,
				desc = "Select assignment inner",
			},
			{
				"gh",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@assignment.lhs", "textobjects")
				end,
				desc = "Select assignment left-hand side",
			},
			{
				"gl",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@assignment.rhs", "textobjects")
				end,
				desc = "Select assignment right-hand side",
			},
			{
				"ak",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@comment.outer", "textobjects")
				end,
				desc = "Select comment outer",
			},
			{
				"ik",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@comment.inner", "textobjects")
				end,
				desc = "Select comment inner",
			},
			{
				"ar",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@return.outer", "textobjects")
				end,
				desc = "Select return outer",
			},
			{
				"ir",
				mode = { "v", "o" },
				function()
					require("nvim-treesitter-textobjects.select").select_textobject("@return.inner", "textobjects")
				end,
				desc = "Select return inner",
			},
			{
				"]m",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_start("@function.outer", "textobjects")
				end,
				desc = "Next function start",
			},
			{
				"]f",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_start("@call.outer", "textobjects")
				end,
				desc = "Next function call start",
			},
			{
				"]R",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_end("@return.outer", "textobjects")
				end,
				desc = "Next return end",
			},
			{
				"]k",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_start("@comment.outer", "textobjects")
				end,
				desc = "Next comment start",
			},
			{
				"]K",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_end("@comment.outer", "textobjects")
				end,
				desc = "Next comment end",
			},
			{
				"]r",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_start("@return.outer", "textobjects")
				end,
				desc = "Next return start",
			},
			{
				"]c",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_start("@class.outer", "textobjects")
				end,
				desc = "Next class start",
			},
			{
				"]d",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_start("@conditional.outer", "textobjects")
				end,
				desc = "Next conditional start",
			},
			{
				"]l",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_start("@loop.outer", "textobjects")
				end,
				desc = "Next loop start",
			},
			{
				"]a",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_start("@parameter.inner", "textobjects")
				end,
				desc = "Next parameter start",
			},
			{
				"]M",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_end("@function.outer", "textobjects")
				end,
				desc = "Next function end",
			},
			{
				"]F",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_end("@call.outer", "textobjects")
				end,
				desc = "Next function call end",
			},
			{
				"]C",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_next_end("@class.outer", "textobjects")
				end,
				desc = "Next class end",
			},
			{
				"[k",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_start("@comment.outer", "textobjects")
				end,
				desc = "Next comment start",
			},
			{
				"[K",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_end("@comment.outer", "textobjects")
				end,
				desc = "Next comment end",
			},
			{
				"[R",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_end("@return.outer", "textobjects")
				end,
				desc = "Previous return end",
			},
			{
				"[r",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_start("@return.outer", "textobjects")
				end,
				desc = "Previous return start",
			},
			{
				"[m",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_start("@function.outer", "textobjects")
				end,
				desc = "Previous function start",
			},
			{
				"[f",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_start("@call.outer", "textobjects")
				end,
				desc = "Previous function call start",
			},
			{
				"[c",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_start("@class.outer", "textobjects")
				end,
				desc = "Previous class start",
			},
			{
				"[d",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_start("@conditional.outer", "textobjects")
				end,
				desc = "Previous conditional start",
			},
			{
				"[l",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_start("@loop.outer", "textobjects")
				end,
				desc = "Previous loop start",
			},
			{
				"[a",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_start("@parameter.inner", "textobjects")
				end,
				desc = "Previous parameter start",
			},
			{
				"[M",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_end("@function.outer", "textobjects")
				end,
				desc = "Previous function end",
			},
			{
				"[F",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_end("@call.outer", "textobjects")
				end,
				desc = "Previous function call end",
			},
			{
				"[C",
				mode = { "n", "v" },
				function()
					require("nvim-treesitter-textobjects.move").goto_previous_end("@class.outer", "textobjects")
				end,
				desc = "Previous class end",
			},
		},
	},
}
