local colors_py = require('pywal.core').get_colors()

--cursorline
vim.cmd('hi CursorLine gui=underline guibg=' .. colors_py.background)

--barra lateral
vim.cmd('hi VirtColumn guifg=' .. colors_py.color4)

vim.cmd[[
" simbolos de diagnostico
hi DiagnosticSignError ctermbg=2
hi DiagnosticSignWarn ctermbg=4
hi DiagnosticSignInfo ctermbg=3
hi DiagnosticSignHint ctermbg=5

" popup menu
hi Pmenu ctermbg=0 ctermfg=7
hi PmenuSel ctermbg=2 ctermfg=7
hi PmenuSbar ctermbg=0 ctermfg=7
hi PmenuThumb ctermbg=2 ctermfg=7
]]
