vim.g.mapleader = ' '

-- Capital Q gets you into bad mode
vim.keymap.set('n', 'Q', '<nop>')

-- Allows to replace the word under cursor everywhere.
vim.keymap.set('n', '<leader>r', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Map <leader>b to :bnext
vim.keymap.set('n', '<leader>b', ':bnext<CR>', { noremap = true, silent = true })

-- Map <leader>B to :bprev
vim.keymap.set('n', '<leader>B', ':bprev<CR>', { noremap = true, silent = true })
