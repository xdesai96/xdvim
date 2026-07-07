return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				python = { "ruff_fix", "ruff_organize_imports", "ruff_format" },
				rust = { "rustfmt" },
				nix = { "nixpkgs_fmt" },
				lua = { "stylua" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				astro = {  "prettier", stop_after_first = true },
				json = { "prettierd", "prettier", "jq", stop_after_first = true },
				jsonc = { "prettierd", "prettier", stop_after_first = true },
			},

			formatters = {
				prettier = {
					prepend_args = { "--plugin", "prettier-plugin-astro" },
				},
				prettierd = {
					prepend_args = { "--plugin", "prettier-plugin-astro" },
				},
			},
		},
		config = function(_, opts)
			local conform = require("conform")
			conform.setup(opts)
			vim.keymap.set("n", "<leader>fm", function()
				conform.format({
					lsp_format = "fallback",
					async = true,
				})
			end, { desc = "Format file" })
		end,
	},
}
