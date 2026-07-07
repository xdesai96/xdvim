## Requirements

### Base
- Neovim >0.11.0
- a C compiler for `nvim-treesitter`
- `ripgrep` and `bat` for `fzf-lua` plugin

### LSP

- rust: rust analyzer
- c/cpp: clangd
- python: basedpyright
- typescript: typescript-language-server
- tailwindcss: tailwindcss-language-server
- lua: lua-language-server
- nix: nil

### Formatters
- python: ruff (ruff_fix, ruff_organize_imports, ruff_format)
- typescript/javascript: prettierd, prettier
- json/jsonc: prettierd, prettier, jq (only json)
- nix: nixpkgs-fmt
- lua: stylua

> Note: All LSP and formatters must be available in `$PATH`.
> Missing servers will show warnings on startup.

## Quick Start

### 1. Backup existing config (optional)

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

---

### 2. Installation

```bash
git clone https://github.com/xdesai96/xdvim ~/.config/nvim --depth=1
```

---

### 3. Start Neovim

```bash
nvim
```

> NOTE: All plugins will be automatically installed at first start.
