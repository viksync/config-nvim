# Neovim/LazyVim Configuration Summary

## Base Setup
- **Framework**: LazyVim with TypeScript/JavaScript extras
- **Plugin Manager**: lazy.nvim
- **Default Colorscheme**: tokyonight-moon (fallback: habamax)

## Colorschemes Installed
1. **tokyonight-moon** (active) - Dark theme
2. **gruvbox-material** - Hard background variant

## Editor Settings
- Text wrapping enabled (`wrap = true`)
- Inlay hints disabled (nvim-lspconfig)
- Lualine status bar with auto theme switching

## Custom Keymaps
**Insert Mode (NvChad-style)**:
- `<C-b>` - Move to line beginning
- `<C-e>` - Move to line end
- `<C-h/l>` - Left/Right
- `<C-j/k>` - Down/Up
- `<C-x>` - Save & Exit

**Normal Mode**:
- `<D-s>` (Cmd+S on Mac) - Save file
- `<leader>q` - Quit all
- `<leader>/` - Toggle comment
- `Y` - Yank whole file
- `dd` - Black hole delete
- `x` - Black hole delete char
- `s` - Remapped from flash.nvim (preserve default)

## Terminal Integration
- **toggleterm**: `<leader>j` toggles floating terminal
- **Claude Code** (`<C-,>`): Integrated with floating window (80% width/height)
  - Variants: `<leader>cC` (continue), `<leader>cV` (verbose)
  - Auto sets CWD to git root
  - File refresh enabled with 1s polling

## Code Quality & Formatting
**Linter**: ESLint (auto-configured via root_dir detection)

**Formatter**: Prettier (conform.nvim)
- Languages: JS, TS, JSX, TSX, JSON, JSONC, Vue, CSS, SCSS, HTML, YAML, Markdown, GraphQL
- Timeout: 3s, LSP fallback enabled

## Disabled Features
- Friendly snippets
- Several built-in plugins (gzip, tarPlugin, tohtml, tutor, zipPlugin)
