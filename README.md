## Quick Start

### 1. Backup existing config (optional)

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
````

---

### 2. Install xdvim

```bash
git clone https://github.com/xdesai96/xdvim ~/.config/nvim --depth=1
```

---

### 3. Start Neovim

```bash
nvim
```

> Note: xdvim does not install language servers automatically.
> All LSPs must be available in `$PATH`.
> Missing servers will show warnings on startup.
