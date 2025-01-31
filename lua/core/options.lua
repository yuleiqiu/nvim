-- Hint: use `:h <option>` to figure out the meaning if needed
local options = {
  clipboard = 'unnamedplus', -- use system clipboard
  completeopt = { 'menu', 'menuone', 'noselect' },
  mouse = '', -- disable(?) mouse support in Neovim

  -- Tab and Indentation
  tabstop = 4, -- number of visual spaces per TAB
  softtabstop = 4, -- number of spaces in tab when editing
  shiftwidth = 4, -- insert 4 spaces on a tab
  expandtab = true, -- tabs are spaces, mainly because of python
  smartindent = true, -- make indenting smarter

  -- UI Config
  number = true, -- show absolute line number
  relativenumber = true, -- show relative line numbers
  cursorline = true, -- highlight cursor line
  splitbelow = true, -- open new vertical splits at the bottom
  splitright = true, -- open new horizontal splits to the right
  termguicolors = true, -- enable 24-bit RGB color in the GUI
  wrap = false, -- do not wrap lines
  list = false, -- do not show hidden characters
  showbreak = '↪', -- character to show when a line is broken
  -- shortmess = 'aToIOWAF', -- configure short messages to reduce noise
  -- foldlevelstart = 99, -- start with all folds open
  -- foldmethod = 'expr', -- use expression-based folding
  -- foldexpr = 'nvim_treesitter#foldexpr()', -- use treesitter for folding

  -- Searching
  incsearch = true, -- search while typing
  hlsearch = false, -- do not highlight search matches
  ignorecase = true, -- ignore case in searches by default
  smartcase = true, -- case-sensitive if search has uppercase letters

  -- Spell Checking
  spell = true, -- enable spell check
  spelllang = 'en_gb', -- use British English for spell checking

  -- File and Backup
  swapfile = false, -- do not create swap files
  backup = false, -- do not create backup files
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- -- Remove trailing white spaces on save.
-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--   pattern = { "*" },
--   command = [[%s/\s\+$//e]],
-- })
