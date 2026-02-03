# nvim
My neovim dotfile config with vim-plug

# HOW TO USE
1. Re-direct into your .config folder
`cd ~/.config`
2. Cloning this repo
`sudo git clone https://github.com/d-clz/nvim.git`
3. Open neovim, at the command mode type `:PlugInstall`


| Action                 | Key            |
| ---------------------- | -------------- |
| Toggle file tree       | `Space e`      |
| Save                   | `Space w`      |
| Quit                   | `Space q`      |
| Focus writing          | `Space z`      |
| Toggle limelight       | `Space l`      |
| Align text             | `ga`           |
| Move between splits    | `Ctrl h/j/k/l` |
| Clear search highlight | `Esc`          |

# Neovim Config – Future-Proofing TODO

This checklist captures architectural decisions, migration lessons, and safe upgrade paths to keep this Neovim setup stable across **Arch Linux, Windows, and Termux**, and resilient to plugin / Neovim core changes.

---

## Core / Architecture

- [ ] Keep core logic cleanly split:
  - `core/options.lua` – `vim.opt`, globals
  - `core/ui.lua` – highlights, transparency, autocmds
  - `core/keymaps.lua` – leader mappings, no plugin internals
  - `plugins/*` – Lazy.nvim specs only
- [ ] Never mutate Vimscript plugin internals from Lua  
  _(e.g. Lightline palettes, `s:` variables, `:let` hacks)_
- [ ] Apply UI overrides via `ColorScheme` autocmd only  
  _(themes always reset highlights)_

---

## Plugins / Maintenance

- [ ] Keep `lazy-lock.json` committed for reproducibility
- [ ] Periodically run `:Lazy sync` and review breaking changes
- [ ] Avoid lazy-loading Vimscript plugins unless necessary

---

## Autopairs / Editing

- [ ] Consider migrating `jiangmiao/auto-pairs` → `nvim-autopairs`  
  - Lua-native  
  - Treesitter-aware  
  - Better long-term support

---

## Statusline

- [ ] If Lightline becomes brittle:
  - Replace with a minimal Lua statusline (lualine or custom)
  - Preserve transparency and low visual noise

---

## File Tree / UI

- [ ] Tune Neo-tree highlights when switching themes
- [ ] Decide whether folder-mode auto-open should remain default

---

## LSP / Dev Experience

- [ ] Fully migrate to `vim.lsp.config` (Neovim ≥ 0.11)
- [ ] Keep per-OS LSP enablement explicit (Windows vs Linux)
- [ ] Add smarter root detection for mono-repos if needed

---

## Writing Mode

- [ ] Refine Goyo + Limelight integration:
  - line width
  - font scaling
  - auto enter/leave behavior

---

## Portability

- [ ] Test config on:
  - Arch Linux
  - Windows
  - Termux (Android)
- [ ] Avoid shell-specific assumptions in keymaps and autocmds

---

## Cleanup

- [ ] Remove unused legacy Vimscript once stable
- [ ] Keep comments explaining **why**, not **what**

---

