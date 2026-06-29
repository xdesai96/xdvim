vim.lsp.config['rust_analyzer'] = {
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' },
  root_markers = { 'Cargo.toml', '.git' },
  settings = {
    ['rust-analyzer'] = {
      checkOnSave = true,
      procMacro = {
        enable = true,
      },
    },
  },
}

vim.lsp.config['clangd'] = {
  cmd = {
    'clangd',
    '--background-index',
    '--clang-tidy',
    '--header-insertion=never',
  },
  filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' },
  root_markers = {
    'compile_commands.json',
    'compile_flags.txt',
    'CMakeLists.txt',
    '.git'
  },
}

vim.lsp.config["pyright"] = {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', 'requirements.txt', '.git' },
  settings = {
    pyright = { disableOrganizeImports = true },
    python = { analysis = { ignore = { "*" } } },
  },
}

vim.lsp.config['ruff'] = {
  cmd = { 'ruff', 'server' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', '.git' },
}

vim.lsp.config['vtsls'] = {
  cmd = { 'vtsls', '--stdio' },
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  root_markers = { 'tsconfig.json', 'jsconfig.json', 'package.json', '.git' },
}

vim.lsp.config['tailwindcss'] = {
  cmd = { 'tailwindcss', '--stdio' },
  filetypes = { 'html', 'css', 'javascriptreact', 'typescriptreact', 'vue', 'svelte' },
  root_markers = { 'tailwind.config.js', 'tailwind.config.ts', 'package.json', '.git' },
}

vim.lsp.config["lua_ls"] = {
  cmd = { "lua-language-server" },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc', '.git' },
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
}

vim.lsp.config['nil_ls'] = {
  cmd = { 'nil' },
  filetypes = { 'nix' },
  root_markers = { 'flake.nix', 'default.nix', '.git' },
  settings = {
    ['nil'] = {
      formatting = { command = { "nixpkgs-fmt" } }
    }
  }
}

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  update_in_insert = false,
})


for name, _ in pairs(vim.lsp.config._configs) do
  if name ~= '*' then
    vim.lsp.enable(name)
  end
end
