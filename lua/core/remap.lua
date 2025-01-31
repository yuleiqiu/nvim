-- Define common options for key mappings
local opts = {
    noremap = true,  -- Non-recursive mapping
    silent = true,   -- Suppress command output messages
}

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-----------------
-- Normal mode --
-----------------

-- Window navigation (move between split windows)
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)  -- Move to the left window
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)  -- Move to the window below
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)  -- Move to the window above
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)  -- Move to the right window

-- Window resizing using arrow keys
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)       -- Decrease window height
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)     -- Increase window height
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)  -- Decrease window width
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts) -- Increase window width

-- Disable 'Q' to prevent entering Ex mode
vim.keymap.set('n', 'Q', '<nop>')

-- -- Replace the word under the cursor throughout the entire file
-- vim.keymap.set('n', '<leader>r', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Buffer navigation
vim.keymap.set('n', '<leader>b', ':bnext<CR>', opts)  -- Go to the next buffer
vim.keymap.set('n', '<leader>B', ':bprev<CR>', opts)  -- Go to the previous buffer

-----------------
-- Visual mode --
-----------------

-- Keep selection when indenting (stay in Visual mode)
vim.keymap.set('v', '<', '<gv', opts)  -- Indent left and reselect
vim.keymap.set('v', '>', '>gv', opts)  -- Indent right and reselect