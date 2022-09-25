--Neovim API aliases
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

-- General
g.mapleader = " "

-- UI
cmd('filetype plugin indent on')
opt.relativenumber = true
opt.number = true
opt.ruler = true
opt.autoindent = true
opt.clipboard = 'unnamedplus'
opt.colorcolumn = '81'
opt.cursorline = true
opt.numberwidth = 1
opt.showcmd = true
opt.showmatch = true
opt.laststatus = 2
opt.showmode = false
opt.wrap = false
opt.termguicolors = true

--coc-config
opt.hidden = true
opt.backup = false
opt.writebackup = false
cmd('set shortmess+=c')

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

opt.pumheight = 10
opt.conceallevel = 0

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
vim.opt.signcolumn = 'number'

--Esta opcion define lo que es una palabra, cambiar en cada after/indent para cada tipo de archvio si es necesario
--vim.opt.iskeyword = "@,a-z,A-Z,48-57,_,-"

-- autoread
cmd[[
if ! exists("g:CheckUpdateStarted")
    let g:CheckUpdateStarted=1
    call timer_start(1,'CheckUpdate')
endif
function! CheckUpdate(timer)
    silent! checktime
    call timer_start(1000,'CheckUpdate')
endfunction
]]

--Configs for filetypes
cmd[[
autocmd FileType css setl iskeyword+=-
autocmd FileType scss setl iskeyword+=@-@
]]

