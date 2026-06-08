## Quick Start & Installation

### 1. Back up your existing configuration
Before installing, make sure to back up your current Neovim files to avoid conflicts:

```bash
# Linux / macOS
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### 2. Clone the repository
Clone this configuration directly into your Neovim config directory

```bash
git clone https://github.com/xdesai96/xdvim ~/.config/nvim --depth=1
```

### 3. Initialize

Simply start Neovim, and everything will set up automatically:

```bash
nvim
```

> **Note on First Launch:** [lazy.nvim](https://github.com/folke/lazy.nvim) will automatically install all plugins, and `mason.nvim` will start downloading the required Language Servers (LSP) in the background. Give it a minute on the first run, then restart Neovim (`:qa` and open again) to ensure everything hooks up perfectly!
