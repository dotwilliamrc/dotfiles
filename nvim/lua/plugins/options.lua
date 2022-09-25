--activar theme
vim.cmd('colorscheme wal')

--vertical column
    require("virt-column").setup()

--statusbar
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'pywal',
        component_separators = { left = '│', right = '│'},
        section_separators = { left = '▌', right = '▐'},
      },

      extensions = {'nvim-tree'}
    }

--treesitter
    --treesitter-plugins-autotag
    vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
      underline = true,
      virtual_text = {
        spacing = 5,
        severity_limit = 'Warning',
      },
      update_in_insert = true,
    }
    )

    require('nvim-treesitter.configs').setup {
      ensure_installed = {'lua', 'html', 'css', 'javascript'},

      sync_install = false,

      highlight = {
        enable = true,
        disable = { "html", },
        additional_vim_regex_highlighting = false,
      },

      --treesitter-plugins-autotag
      autotag = {
        enable = true
      },

    }

    --treesitter-plugins-autopair
    require('nvim-autopairs').setup{
    check_ts = true
    }


    --cmp
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))
      -- add a lisp filetype (wrap my-function), FYI: Hardcoded = { "clojure", "clojurescript", "fennel", "janet" }
      cmp_autopairs.lisp[#cmp_autopairs.lisp+1] = "racket"

--nvim-tree

    local tree_cd = require('nvim-tree.config').nvim_tree_callback

    require('nvim-tree').setup {
      actions = {
        open_file = {
          quit_on_open = true
        }
      },

      git = {
        ignore = true
      },

      view = {
        width = 40,
        number = true,
        relativenumber = true,

        mappings = {
          list = {
            { key = '<leader><enter>' ,cb = tree_cd('cd') }
          }
        }
      },

      renderer = {
        indent_markers = {
          enable = false,
          icons = {
            corner = "└ ",
            edge = "│ ",
            none = "  ",
          },
        },
      }
    }

--telescope
    require('telescope').setup {
      extensions = {
        fzy_native = {
          override_generic_sorter = true,
          override_file_sorter = true,
        }
      },

    }
    require('telescope').load_extension('fzy_native')

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)

--terminal
   require("toggleterm").setup{}

--hop
   require'hop'.setup{}
