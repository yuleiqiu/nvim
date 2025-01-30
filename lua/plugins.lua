-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  -- Colorschemes
  "tanvirtin/monokai.nvim",
  "ellisonleao/gruvbox.nvim",
  "catppuccin/nvim",

  -- Vscode-like pictograms
  {
    "onsails/lspkind.nvim",
    event = { "VimEnter" },
  },
  -- Auto-completion engine
  {
	"hrsh7th/nvim-cmp",
	dependencies = {
      "lspkind.nvim",
	  "hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
	  "hrsh7th/cmp-buffer", -- buffer auto-completion
	  "hrsh7th/cmp-path", -- path auto-completion
	  "hrsh7th/cmp-cmdline", -- cmdline auto-completion
    },
  config = function()
    require("config.nvim-cmp")
  end,
  },
  -- Code snippet engine
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
  },

  -- LSP manager
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- vimtex
  {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end
  },

  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
