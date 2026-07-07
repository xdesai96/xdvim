return {
	rust_analyzer = {
		cmd = { "rust-analyzer" },
	},
	clangd = {
		cmd = {
			"clangd",
			"--background-index",
			"--clang-tidy",
			"--header-insertion=never",
		},
	},
	basedpyright = {
		cmd = { "basedpyright-langserver", "--stdio" },
		settings = {
			basedpyright = {
				analysis = {
					typeCheckingMode = "off",
					diagnosticMode = "openFilesOnly",
				},
			},
		},
	},
	ts_ls = {
		cmd = { "typescript-language-server", "--stdio" },
	},
	tailwindcss = {
		cmd = { "tailwindcss-language-server", "--stdio" },
	},
	lua_ls = {
		cmd = { "lua-language-server" },
		settings = {
			Lua = {
				diagnostics = { globals = { "vim" } },
			},
		},
	},
	nil_ls = {
		cmd = { "nil" },
		settings = {
			["nil"] = {
				formatting = { command = { "nixpkgs-fmt" } },
			},
		},
	},
	astro = {
		cmd = { "npx", "astro-ls", "--stdio" },
		init_options = {
			typescript = {
				tsdk = "./node_modules/typescript/lib",
			},
		},
	},
}
