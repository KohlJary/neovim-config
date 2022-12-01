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
  use { "glepnir/dashboard-nvim", config = [[require('dashboard-nvim')]], }

  -- Theming/Colors
  use 'lifepillar/vim-solarized8'
  use 'sheerun/vim-wombat-scheme'
  use 'srcery-colors/srcery-vim'

  -- Session
  use 'xolox/vim-misc'
  use 'xolox/vim-session'

  -- Buffers
  use 'Asheq/close-buffers.vim'
  use 'jlanzarotta/bufexplorer'
  -- Terminal
  use {'akinsho/toggleterm.nvim', tag = '*', config = function()
    require("toggleterm").setup()
  end
  }
  -- UI
  use 'scrooloose/nerdtree'
  use 'kyazdani42/nvim-web-devicons'
  -- use 'kyazdani42/nvim-tree.lua'
  -- use 'liuchengxu/vista.vim'
  use 'preservim/tagbar'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'kshenoy/vim-signature'
  -- -- File management
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  -- Text Manipulation
  use 'townk/vim-autoclose'
  use 'tpope/vim-abolish'
  use 'unblevable/quick-scope'
  use 'ggandor/lightspeed.nvim'
  use 'tpope/vim-commentary'
  use 'kburdett/vim-nuuid'
  -- Language processing
  use 'vim-syntastic/syntastic'
  use 'neovim/nvim-lspconfig'
  use {'neoclide/coc.nvim', branch = 'release'}
  -- Git
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'Xuyuanp/nerdtree-git-plugin'
  -- C#
  use 'OmniSharp/omnisharp-vim'
  -- HLSL
  use 'beyondmarc/hlsl.vim'
  -- JSON
  use 'tpope/vim-jdaddy'
  -- Icons
  use 'ryanoasis/vim-devicons'
end)
