# Neovim Configuration

A LazyVim-based Neovim setup with a few quality-of-life customizations.

## Base Distribution

This config uses [LazyVim](https://github.com/LazyVim/LazyVim) as the foundation. LazyVim provides:

- Plugin management via lazy.nvim
- LSP configuration with mason.nvim
- Autocompletion with blink.cmp
- Formatting with conform.nvim
- Linting with nvim-lint
- Git integration via gitsigns.nvim
- Snacks.nvim for picker, explorer, and utilities
- Tokyo Night colorscheme
- Which-key for keybinding discovery

## Customizations

### Options

`lua/config/options.lua` sets:

- `wrap` — line wrapping enabled
- `breakindent` — wrapped lines keep their indent
- `clipboard` — system clipboard via `unnamedplus`

### Autocmds

`lua/config/autocmds.lua` disables `lazyvim_wrap_spell`, which removes automatic spell check in markdown and text files.

### Plugins

Custom plugins and overrides live in `lua/plugins/`:

#### hbac.nvim

Automatically closes unused buffers. Threshold is set to 1 so only the current buffer stays pinned. Autoclose is enabled.

Includes a fix that unpins buffers on close, so reopening them starts fresh instead of restoring the old state.

#### lualine.nvim

Clears the rightmost statusline section (`lualine_z`) for a cleaner look.

#### tokyonight.nvim

Transparent backgrounds for sidebars and floating windows.

#### snacks.nvim

File picker and explorer tweaks:

- Files picker shows hidden files, excludes `node_modules`, `dist`, `build`, and lock files
- Explorer shows hidden and ignored files, `<CR>` confirms and returns focus to the list

## File Structure

```
~/.config/nvim
├── init.lua              -- Bootstrap entry point
├── lazy-lock.json        -- Pinned plugin versions
├── stylua.toml           -- Lua formatting config
├── .neoconf.json         -- Neovim LSP settings
└── lua/
    ├── config/
    │   ├── lazy.lua      -- lazy.nvim setup
    │   ├── options.lua   -- Custom vim options
    │   ├── keymaps.lua   -- Custom keymaps (currently empty)
    │   └── autocmds.lua  -- Custom autocommands
    └── plugins/
        ├── hbac.lua          -- Buffer auto-close
        ├── lualine.lua       -- Statusline tweak
        ├── colorscheme.lua   -- Transparent theme
        └── snacks-explorer.lua -- Picker/explorer config
```

## Installed Plugins

See `lazy-lock.json` for the full list with versions. Notable additions beyond LazyVim defaults:

- hbac.nvim — buffer management
- venv-selector.nvim — Python virtual environment selector
- nvim-ts-autotag — auto-close HTML/JSX tags

---

## Credits

Built on [LazyVim](https://github.com/LazyVim/LazyVim), maintained by [folke](https://github.com/folke) and contributors.
