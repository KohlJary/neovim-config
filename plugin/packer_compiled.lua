-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\KOHLBE~1.JAR\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\KOHLBE~1.JAR\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\KOHLBE~1.JAR\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\KOHLBE~1.JAR\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\KOHLBE~1.JAR\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["auto-session"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\22auto_save_enabled\2 auto_session_use_git_branch\2\14log_level\tinfo auto_session_create_enabled\2\nsetup\17auto-session\frequire\0" },
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  bufexplorer = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bufexplorer",
    url = "https://github.com/jlanzarotta/bufexplorer"
  },
  ["close-buffers.vim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\close-buffers.vim",
    url = "https://github.com/Asheq/close-buffers.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\15\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0034\4\a\0005\5\a\0>\5\1\0045\5\b\0>\5\2\0045\5\t\0>\5\3\0045\5\n\0>\5\4\0045\5\v\0>\5\5\0045\5\f\0>\5\6\4=\4\r\3=\3\14\2B\0\2\1K\0\1\0\vconfig\rshortcut\1\0\4\vaction\23Telescope dotfiles\tdesc\17 dotfiles\ngroup\vNumber\bkey\6d\1\0\4\vaction\18Telescope app\tdesc\r Apps\ngroup\19DiagnosticHint\bkey\6a\1\0\4\vaction\15Prosession\tdesc\19 Prosession\ngroup\nLabel\bkey\6p\1\0\4\vaction\19RestoreSession\tdesc\26 Open Last Session\ngroup\nLabel\bkey\6r\1\0\4\vaction\25Telescope find_files\tdesc\14 Files\ngroup\nLabel\bkey\6f\1\0\4\vaction\17PackerUpdate\tdesc\15 Update\ngroup\14@property\bkey\6u\16week_header\1\0\0\1\0\1\venable\2\1\0\1\ntheme\nhyper\nsetup\14dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["fine-cmdline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fine-cmdline.nvim",
    url = "https://github.com/vonheikemen/fine-cmdline.nvim"
  },
  fzf = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["neoai.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neoai.nvim",
    url = "https://github.com/Bryley/neoai.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nerdtree-dash"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdtree-dash",
    url = "https://github.com/liuchengxu/nerdtree-dash"
  },
  ["nerdtree-git-plugin"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdtree-git-plugin",
    url = "https://github.com/Xuyuanp/nerdtree-git-plugin"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    commands = { "CodeActionMenu" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["session-lens"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17session-lens\frequire\0" },
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\session-lens",
    url = "https://github.com/rmagatti/session-lens"
  },
  ["srcery-vim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\srcery-vim",
    url = "https://github.com/srcery-colors/srcery-vim"
  },
  syntastic = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\syntastic",
    url = "https://github.com/vim-syntastic/syntastic"
  },
  tagbar = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\typescript-vim",
    url = "https://github.com/leafgarland/typescript-vim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-graphql"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-graphql",
    url = "https://github.com/jparise/vim-graphql"
  },
  ["vim-misc"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-misc",
    url = "https://github.com/xolox/vim-misc"
  },
  ["vim-nuuid"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-nuuid",
    url = "https://github.com/kburdett/vim-nuuid"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-signature",
    url = "https://github.com/kshenoy/vim-signature"
  },
  ["vim-solarized8"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-solarized8",
    url = "https://github.com/lifepillar/vim-solarized8"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-wombat-scheme"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-wombat-scheme",
    url = "https://github.com/sheerun/vim-wombat-scheme"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: session-lens
time([[Config for session-lens]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17session-lens\frequire\0", "config", "session-lens")
time([[Config for session-lens]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\22auto_save_enabled\2 auto_session_use_git_branch\2\14log_level\tinfo auto_session_create_enabled\2\nsetup\17auto-session\frequire\0", "config", "auto-session")
time([[Config for auto-session]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'CodeActionMenu', function(cmdargs)
          require('packer.load')({'nvim-code-action-menu'}, { cmd = 'CodeActionMenu', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-code-action-menu'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CodeActionMenu ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
