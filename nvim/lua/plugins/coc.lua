local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { expr = true, noremap = true }
local cmd = vim.cmd
local g = vim.g
local fn = vim.fn

local function t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.tab_completion()
  if fn['coc#pum#visible']() == 1 then
    return fn['coc#pum#next'](1)
  end

--  if fn['coc#expandableOrJumpable']() == 1 then
--    return t'<C-r>=coc#rpc#request(\'doKeymap\', [\'snippets-expand-jump\',\'\'])<CR>'
--  end

  return t'<TAB>'
end

g.coc_snippet_next = ';'

function _G.ctl_space_completion()
  if fn['coc#pum#visible']() == 1 then
    return fn['coc#pum#stop']()
  end

  return fn['coc#start']()
end

map('i', '<TAB>', 'v:lua.tab_completion()', expr_opts)
map('i', '<S-TAB>', 'coc#pum#visible() ? coc#pum#prev(1) : "<C-h>"', expr_opts)

--Use <c-space> to trigger completion.
map('i', '<c-space>', 'v:lua.ctl_space_completion()', expr_opts)

--Use `C-l` and `C-h` to navigate diagnostics
map('', '<C-l>', '<Plug>(coc-diagnostic-next)', default_opts)
map('', '<C-h>', '<Plug>(coc-diagnostic-prev)', default_opts)

--GoTo code navigation.
map('', 'gd', '<Plug>(coc-definition)', default_opts)
map('', 'gy', '<Plug>(coc-type-definition)', default_opts)
map('', 'gi', '<Plug>(coc-implementation)', default_opts)
map('', 'gr', '<Plug>(coc-references)', default_opts)


--Soporte para autopairs
local npairs = require('nvim-autopairs')
npairs.setup({map_cr=false})

_G.MUtils= {}

-- new version for custom pum
MUtils.completion_confirm=function()
    if fn["coc#pum#visible"]() ~= 0  then
        return fn["coc#pum#confirm"]()
    else
        return npairs.autopairs_cr()
    end
end

--Enter
map('i' , '<CR>','v:lua.MUtils.completion_confirm()', expr_opts)

-- Use K to show documentation in preview window.
function Show_documentation()
    local filetype = vim.bo.filetype
    if filetype == "vim" or filetype == "help" then
        vim.api.nvim_command("h " .. vim.fn.expand("<cword>"))
    elseif vim.fn["coc#rpc#ready"]() then
        vim.fn.CocActionAsync("doHover")
    else
        vim.api.nvim_command(
            "!" .. vim.bo.keywordprg .. " " .. vim.fn.expand("<cword>")
        )
    end
end

map("n", "K", ":lua Show_documentation() <CR>", default_opts)
