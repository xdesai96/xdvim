return {
  rust_analyzer = {
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
  },
  clangd = {
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
  },
  pyright = {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { 'python' },
    root_markers = { 'pyproject.toml', 'setup.py', 'requirements.txt', '.git' },
    settings = {
      pyright = { disableOrganizeImports = true },
      python = { analysis = { ignore = { "*" } } },
    },
  },
  ruff = {
    cmd = { 'ruff', 'server' },
    filetypes = { 'python' },
    root_markers = { 'pyproject.toml', 'setup.py', '.git' },
  },
  ts_ls = {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = {
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact',
    },
    root_markers = { 'tsconfig.json', 'jsconfig.json', 'package.json', '.git' },
  },
  tailwindcss = {
    cmd = { 'tailwindcss-language-server', '--stdio' },
    filetypes = {
      -- html
      'aspnetcorerazor', 'astro', 'astro-markdown', 'blade', 'clojure',
      'django-html', 'htmldjango', 'edge', 'eelixir', 'elixir', 'ejs',
      'erb', 'eruby', 'gohtml', 'gohtmltmpl', 'haml', 'handlebars', 'hbs',
      'html', 'htmlangular', 'html-eex', 'heex', 'jade', 'leaf', 'liquid',
      'markdown', 'mdx', 'mustache', 'njk', 'nunjucks', 'php', 'razor', 'slim',
      'twig',
      -- css
      'css', 'less', 'postcss', 'sass', 'scss', 'stylus', 'sugarss',
      -- js
      'javascript', 'javascriptreact', 'reason', 'rescript', 'typescript',
      'typescriptreact',
      -- mixed
      'vue', 'svelte', 'templ',
    },
    root_markers = {
      'tailwind.config.js', 'tailwind.config.ts', 'package.json', '.git'
    },
  },
  lua_ls = {
    cmd = { "lua-language-server" },
    filetypes = { 'lua' },
    root_markers = { '.luarc.json', '.luarc.jsonc', '.git' },
    settings = {
      Lua = {
        diagnostics = { globals = { "vim" } },
      },
    },
  },
  nil_ls = {
    cmd = { 'nil' },
    filetypes = { 'nix' },
    root_markers = { 'flake.nix', 'default.nix', '.git' },
    settings = {
      ['nil'] = {
        formatting = { command = { "nixpkgs-fmt" } }
      }
    }
  },
  astro = {
    cmd = { 'npx', 'astro-ls', '--stdio' },
    filetypes = { 'astro' },
    root_markers = { 'astro.config.mjs', 'astro.config.js', 'astro.config.ts', 'package.json', '.git' },
    init_options = {
      typescript = {
        tsdk = './node_modules/typescript/lib'
      },
    },
  }
}
