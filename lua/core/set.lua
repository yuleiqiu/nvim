local options = {
    nu = true,
    spell = true,
    spelllang='en_gb,el',
    colorcolumn = '80',
    expandtab = true,
    foldlevelstart = 99,
    foldmethod = "expr",
    foldexpr = "nvim_treesitter#foldexpr()",
    ignorecase = false,
    list = false,
    mouse = "",
    guicursor = "",
    relativenumber = true,
    shiftwidth = 4,
    shortmess = "aToIOWAF",
    showbreak = "↪",
    smartcase = false,
    cursorline = true,
    smartindent = true,
    softtabstop = 4,
    swapfile = false,
    tabstop = 4,
    termguicolors = true,
    hlsearch = false,
    incsearch = true,
    wrap = false,
    backup = false,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Remove trailing white spaces on save.
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
