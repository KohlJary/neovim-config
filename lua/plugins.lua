-- local ensure_packer = function()
--   local fn = vim.fn
--   local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
--   if fn.empty(fn.glob(install_path)) > 0 then
--     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--     vim.cmd [[packadd packer.nvim]]
--     return true
--   end
--   return false
-- end

-- local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Simple plugins can be specified as strings
    -- use 'rstacruz/vim-closer'

    -- Lazy loading:
    -- Load on specific commands
    -- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

    -- Load on an autocommand event
    -- use {'andymass/vim-matchup', event = 'VimEnter'}

    -- Load on a combination of conditions: specific filetypes or commands
    -- Also run code after load (see the "config" key)
    -- use {
    --   'w0rp/ale',
    --   ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    --   cmd = 'ALEEnable',
    --   config = 'vim.cmd[[ALEEnable]]'
    -- }

    -- Plugins can have dependencies on other plugins
    -- use {
    --   'haorenW1025/completion-nvim',
    --   opt = true,
    --   requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
    -- }

    -- Plugins can also depend on rocks from luarocks.org:
    -- use {
    --   'my/supercoolplugin',
    --   rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
    -- }

    -- You can specify rocks in isolation
    -- use_rocks 'penlight'
    -- use_rocks {'lua-resty-http', 'lpeg'}

    -- Local plugins can be included
    -- use '~/projects/personal/hover.nvim'

    -- Plugins can have post-install/update hooks
    -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

    -- Post-install/update hook with neovim command
    -- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Post-install/update hook with call of vimscript function with argument
    -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

    -- Use specific branch, dependency and run lua file after load
    -- use {
    --   'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
    --   requires = {'kyazdani42/nvim-web-devicons'}
    -- }

    -- Use dependency and run lua function after load
    -- use {
    --   'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    --   config = function() require('gitsigns').setup() end
    -- }

    -- You can specify multiple plugins in a single call
    -- use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

    -- You can alias plugin names
    -- use {'dracula/vim', as = 'dracula'}
    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                theme = 'hyper',
                config = {
                    week_header = {
                        enable = true,
                    },
                    shortcut = {
                        { desc = ' Update', group = '@property', action = 'PackerUpdate', key = 'u' },
                        {
                            desc = ' Files',
                            group = 'Label',
                            action = 'Telescope find_files',
                            key = 'f',
                        },
                        {
                            desc = ' Load CS Projects',
                            group = 'Label',
                            action = 'CSLoadProjects',
                            key = 'c',
                        },
                        {
                            desc = ' Prosession',
                            group = 'Label',
                            action = 'Prosession',
                            key = 'p',
                        },
                        {
                            desc = ' Apps',
                            group = 'DiagnosticHint',
                            action = 'Telescope app',
                            key = 'a',
                        },
                        {
                            desc = ' dotfiles',
                            group = 'Number',
                            action = 'Telescope dotfiles',
                            key = 'd',
                        },
                    },
                },
            }
        end,
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    -- Theming/Colors
    use 'srcery-colors/srcery-vim'
    use 'junegunn/rainbow_parentheses.vim'
    use 'jlcrochet/vim-cs'

    -- Session
    use 'xolox/vim-misc'
    use 'tpope/vim-obsession'
    use {
        'dhruvasagar/vim-prosession',
        dependencies = {
            'tpope/vim-obsession'
        }
    }

    use {
        'rmagatti/session-lens',
        requires = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
        config = function()
            require('session-lens').setup({ --[[your custom config--]] })
        end
    }

    -- Buffers
    use 'moll/vim-bbye'
    use 'wesQ3/vim-windowswap'
    -- Terminal
    use { 'akinsho/toggleterm.nvim', tag = '*', config = function()
        require("toggleterm").setup()
    end
    }
    -- UI
    -- NERDTree
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'
    -- Vifm
    use 'vifm/vifm.vim'
    -- Status Line
    use 'preservim/tagbar'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'kshenoy/vim-signature'
    -- Misc
    use 'MunifTanjim/nui.nvim'
    use 'jceb/vim-orgmode'
    use { 'echasnovski/mini.nvim', version = '*' }
    -- File management
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            {
                -- only needed if you want to use the commands with "_with_window_picker" suffix
                's1n7ax/nvim-window-picker',
                tag = "v1.*",
                config = function()
                    require 'window-picker'.setup({
                        autoselect_one = true,
                        include_current = false,
                        filter_rules = {
                            -- filter using buffer options
                            bo = {
                                -- if the file type is one of following, the window will be ignored
                                filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                                -- if the buffer type is one of following, the window will be ignored
                                buftype = { 'terminal', "quickfix" },
                            },
                        },
                        other_win_hl_color = '#e35e4f',
                    })
                end,
            }
        }
    }
    -- use {
    --     "dunstontc/projectile.nvim",
    --     requires = { "Shougo/denite.nvim" }
    -- }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use { 'nvim-treesitter/nvim-tree-docs' }
    -- Windows intial installation of Treesitter
    -- use {
    --     'nvim-treesitter/nvim-treesitter',
    --     run = function()
    --         local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
    --         ts_update()
    --     end,
    -- }

    -- Debugging
    use { 'nvim-neotest/nvim-nio' }
    use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' } }
    use {
        'folke/neodev.nvim',
        config = function()
            require('neodev').setup({
                library = {
                    plugins = { "nvim-dap-ui" },
                    types = true
                }
            })
        end
    }
    use {
        'theHamsta/nvim-dap-virtual-text',
        config = function()
            require('nvim-dap-virtual-text').setup()
        end
    }
    use 'dhruvasagar/vim-testify'

    -- Text Manipulation
    use 'unblevable/quick-scope'
    use 'tpope/vim-commentary'
    use 'kburdett/vim-nuuid'
    use 'chrisbra/unicode.vim'
    use 'vim-autoformat/vim-autoformat'

    -- Language processing
    -- use 'vim-syntastic/syntastic'
    use {
        'kosayoda/nvim-lightbulb',
        requires = 'antoinemadec/FixCursorHold.nvim'
    }
    use {
        "aznhe21/actions-preview.nvim",
        config = function()
            vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
        end,
    }
    use 'nvim-lua/lsp-status.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })
    use 'saadparwaiz1/cmp_luasnip'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    -- Documentation
    use {
        'kkoomen/vim-doge',
        run = 'call doge#install()'
    }

    -- AI
    -- use 'Bryley/neoai.nvim'

    -- Database
    use {
        'kristijanhusak/vim-dadbod-ui',
        dependencies = {
            { 'tpope/vim-dadbod',                     lazy = true },
            { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
        },
        cmd = {
            'DBUI',
            'DBUIToggle',
            'DBUIAddConnection',
            'DBUIFindBuffer',
        },
        init = function()
            vim.g.db_ui_use_nerd_fonts = 1
        end,
    }

    -- Git
    use 'tpope/vim-fugitive'
    use {
        'airblade/vim-gitgutter',
        branch = 'main'
    }
    use 'Xuyuanp/nerdtree-git-plugin'

    -- CSharp
    use 'Tastyep/structlog.nvim'
    use 'tris203/rzls.nvim'

    -- GraphQL
    use 'jparise/vim-graphql'

    -- Typescript
    use 'leafgarland/typescript-vim'
    use 'peitalin/vim-jsx-typescript'

    -- HTML/XML
    use {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup({
                opts = {
                    -- Defaults
                    enable_close = true,         -- Auto close tags
                    enable_rename = true,        -- Auto rename pairs of tags
                    enable_close_on_slash = true -- Auto close on trailing </
                }
                -- Also override individual filetype configs, these take priority.
                -- Empty by default, useful if one of the "opts" global settings
                -- doesn't work well in a specific filetype
                -- per_filetype = {
                -- ["html"] = {
                --     enable_close = false
                -- }
                -- }
            })
        end
    }
    use {
        "reybits/scratch.nvim",
        config = function()
            require('scratch').setup({
                lazy = true,
                cmd = {
                    "ScratchToggle",
                },
                opts = {},
            })
        end
    }

    use {
        'Equilibris/nx.nvim',
        requires = {
            'nvim-telescope/telescope.nvim',
        },
        config = function()
            require("nx").setup {}
        end
    }
end)
