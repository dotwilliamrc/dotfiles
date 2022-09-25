local map = function(key)
  --extraer opciones
  local opts = {noremap = true}
  for i, v in pairs(key) do
    if type(i) == 'string' then opts[i] = v end
  end

  -- soporte básico para atajos de buffer
  local buffer = opts.buffer
  opts.buffer = nil

  if buffer then
    vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
  else
    vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
  end
end

vim.g.mapleader = ' '

--keymaps del teclado dvorak
map {'', '[', '7'}
map {'', '{', '5'}
map {'', '}', '3'}
map {'', '(', '1'}
map {'', '=', '9'}
map {'', '*', '0'}
map {'', ')', '2'}
map {'', '+', '4'}
map {'', ']', '6'}
map {'', '!', '8'}

map {'', '7', '['}
map {'', '5', '{'}
map {'', '3', '}'}
map {'', '1', '('}
map {'', '9', '='}
map {'', '0', '*'}
map {'', '2', ')'}
map {'', '4', '+'}
map {'', '6', ']'}
map {'', '8', '!'}

--keymaps personalizadas
map {'', '<enter>', 'o<esc>'}
map {'', '<leader><enter>', 'O<esc>'}

--Moverse entre buffers en la ventana
map {'', '<leader>h', ':TmuxNavigateLeft<cr>', {noremap = true, silent = false}}
map {'', '<leader>j', ':TmuxNavigateDown<cr>', {noremap = true, silent = false}}

map {'', '<leader>k', ':TmuxNavigateUp<cr>', {noremap = true, silent = false}}
map {'', '<leader>l', ':TmuxNavigateRight<cr>', {noremap = true, silent = false}}
map {'', '<leader>/', ':TmuxNavigatePrevious<cr>', {noremap = true, silent = false}}
--
--nvim-tree
map {'', '<leader>nt', ':NvimTreeFindFileToggle<cr>'}

--telescope
map {'', '<leader>ff', ':lua require("telescope.builtin").find_files()<cr>'}
map {'', '<leader>fg', ':lua require("telescope.builtin").live_grep()<cr>'}
map {'', '<leader>fs', ':lua require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") })<cr>'}
map {'', '<leader>fb', ':lua require("telescope.builtin").buffers()<cr>'}

--lua-keymaps
map {'', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {noremap = true, silent = true}}
map {'', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {noremap = true, silent = true}}
map {'', 'gy', '<cmd>lua vim.lsp.buf.type_definition()<cr>', {noremap = true, silent = true}}
map {'', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {noremap = true, silent = true}}
map {'', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {noremap = true, silent = true}}
map {'', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', {noremap = true, silent = true}}

--terminal
map {'', '<leader>tv', '<cmd>exe v:count1 . "ToggleTerm size=40 direction=vertical"<cr>', {noremap = true, silent = true}}
map {'', '<leader>th', '<cmd>exe v:count1 . "ToggleTerm size=10 direction=horizontal"<cr>', {noremap = true, silent = true}}
map {'', '<leader>tt', '<cmd>exe v:count1 . "ToggleTerm direction=tab"<cr>', {noremap = true, silent = true}}
map {'t', '<C-n>', '<C-\\><C-n>', {noremap = true, silent = true}}

--hop
map {'', '<leader>s', ':HopChar2<cr>', {noremap = true, silent = true}}
