-- Aliases

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-- para eliminar el retraso en tmux
map('i', '<escape>', '<escape><escape>', default_opts)

-- Desactivar flechas de movimiento
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})

--keymaps del teclado dvorak
map ('', '[', '7', {noremap = true})
map ('', '{', '5', {noremap = true})
map ('', '}', '3', {noremap = true})
map ('', '(', '1', {noremap = true})
map ('', '=', '9', {noremap = true})
map ('', '*', '0', {noremap = true})
map ('', ')', '2', {noremap = true})
map ('', '+', '4', {noremap = true})
map ('', ']', '6', {noremap = true})
map ('', '!', '8', {noremap = true})

map ('', '7', '[', {noremap = true})
map ('', '5', '{', {noremap = true})
map ('', '3', '}', {noremap = true})
map ('', '1', '(', {noremap = true})
map ('', '9', '=', {noremap = true})
map ('', '0', '*', {noremap = true})
map ('', '2', ')', {noremap = true})
map ('', '4', '+', {noremap = true})
map ('', '6', ']', {noremap = true})
map ('', '8', '!', {noremap = true})

--moverse entre ventanas
map ('', '<leader>h', '<C-w>h', default_opts)
map ('', '<leader>j', '<C-w>j', default_opts)
map ('', '<leader>k', '<C-w>k', default_opts)
map ('', '<leader>l', '<C-w>l', default_opts)

--keymaps personalizadas
map ('', '<enter>', 'o<esc>', {noremap = true})
map ('', '<leader><enter>', 'O<esc>', {noremap = true})

-- NeoTree
map('', '<leader>nt', ':Neotree toggle<cr>', default_opts)

-- Tabby
map('', '<leader>ta', ':$tabnew<cr>', {noremap = true})
map('', '<leader>tc', ':tabclose<cr>', {noremap = true})
map('', '<leader>to', ':tabonly<cr>', {noremap = true})
map('', '<leader>tn', ':tabn<cr>', {noremap = true})
map('', '<leader>tp', ':tabp<cr>', {noremap = true})

--Hop
map ('', '<leader>s', ':HopChar2<cr>', {noremap = true, silent = false})

--telescope
map ('', '<leader>ff', ':lua require("telescope.builtin").find_files({ hidden=false })<cr>', default_opts)
map ('', '<leader>fg', ':lua require("telescope.builtin").live_grep({ hidden=false })<cr>', default_opts)
map ('', '<leader>fs', ':lua require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>"), hidden=false })<cr>', default_opts)
map ('', '<leader>fb', ':lua require("telescope.builtin").buffers({ hidden=false })<cr>', default_opts)

map ('', '<leader>;', ':ZenMode<cr>', {})

--Terminal
map ('t', '<C-n>', '<C-\\><C-n>', default_opts)
