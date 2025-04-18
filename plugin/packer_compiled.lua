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
local package_path_str = "C:\\Users\\KOHLBE~1.JAR\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1741730670\\share\\lua\\5.1\\?.lua;C:\\Users\\KOHLBE~1.JAR\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1741730670\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\KOHLBE~1.JAR\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1741730670\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\KOHLBE~1.JAR\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1741730670\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\KOHLBE~1.JAR\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1741730670\\lib\\lua\\5.1\\?.so"
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
  ["actions-preview.nvim"] = {
    config = { "\27LJ\2\nr\0\0\a\0\b\0\v6\0\0\0009\0\1\0009\0\2\0005\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\4B\0\4\1K\0\1\0\17code_actions\20actions-preview\frequire\agf\1\3\0\0\6v\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\actions-preview.nvim",
    url = "https://github.com/aznhe21/actions-preview.nvim"
  },
  ["auto-session"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-session",
    url = "https://github.com/rmagatti/auto-session"
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
    config = { "\27LJ\2\n�\4\0\0\6\0\15\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0034\4\a\0005\5\a\0>\5\1\0045\5\b\0>\5\2\0045\5\t\0>\5\3\0045\5\n\0>\5\4\0045\5\v\0>\5\5\0045\5\f\0>\5\6\4=\4\r\3=\3\14\2B\0\2\1K\0\1\0\vconfig\rshortcut\1\0\4\vaction\23Telescope dotfiles\ngroup\vNumber\tdesc\17 dotfiles\bkey\6d\1\0\4\vaction\18Telescope app\ngroup\19DiagnosticHint\tdesc\r Apps\bkey\6a\1\0\4\vaction\15Prosession\ngroup\nLabel\tdesc\19 Prosession\bkey\6p\1\0\4\vaction\19CSLoadProjects\ngroup\nLabel\tdesc\25 Load CS Projects\bkey\6c\1\0\4\vaction\25Telescope find_files\ngroup\nLabel\tdesc\14 Files\bkey\6f\1\0\4\vaction\17PackerUpdate\ngroup\14@property\tdesc\15 Update\bkey\6u\16week_header\1\0\2\rshortcut\0\16week_header\0\1\0\1\venable\2\1\0\2\ntheme\nhyper\vconfig\0\nsetup\14dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
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
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neodev.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\flibrary\1\0\1\flibrary\0\fplugins\1\0\2\fplugins\0\ntypes\2\1\2\0\0\16nvim-dap-ui\nsetup\vneodev\frequire\0" },
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
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
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26nvim-dap-virtual-text\frequire\0" },
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
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
  ["nvim-nio"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-nio",
    url = "https://github.com/nvim-neotest/nvim-nio"
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
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\1\abo\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\2\rfiletype\0\fbuftype\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\4\20include_current\1\19autoselect_one\2\23other_win_hl_color\f#e35e4f\17filter_rules\0\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["nx.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\anx\frequire\0" },
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nx.nvim",
    url = "https://github.com/Equilibris/nx.nvim"
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
  ["rainbow_parentheses.vim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rainbow_parentheses.vim",
    url = "https://github.com/junegunn/rainbow_parentheses.vim"
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
  ["unicode.vim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\unicode.vim",
    url = "https://github.com/chrisbra/unicode.vim"
  },
  ["vifm.vim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vifm.vim",
    url = "https://github.com/vifm/vifm.vim"
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
  ["vim-autoformat"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-autoformat",
    url = "https://github.com/vim-autoformat/vim-autoformat"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-cs"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-cs",
    url = "https://github.com/jlcrochet/vim-cs"
  },
  ["vim-dadbod-ui"] = {
    commands = { "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
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
  ["vim-jsx-typescript"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-jsx-typescript",
    url = "https://github.com/peitalin/vim-jsx-typescript"
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
  ["vim-obsession"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-obsession",
    url = "https://github.com/tpope/vim-obsession"
  },
  ["vim-orgmode"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-orgmode",
    url = "https://github.com/jceb/vim-orgmode"
  },
  ["vim-prosession"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-prosession",
    url = "https://github.com/dhruvasagar/vim-prosession"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-signature",
    url = "https://github.com/kshenoy/vim-signature"
  },
  ["vim-testify"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-testify",
    url = "https://github.com/dhruvasagar/vim-testify"
  },
  ["vim-windowswap"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-windowswap",
    url = "https://github.com/wesQ3/vim-windowswap"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: actions-preview.nvim
time([[Config for actions-preview.nvim]], true)
try_loadstring("\27LJ\2\nr\0\0\a\0\b\0\v6\0\0\0009\0\1\0009\0\2\0005\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\4B\0\4\1K\0\1\0\17code_actions\20actions-preview\frequire\agf\1\3\0\0\6v\6n\bset\vkeymap\bvim\0", "config", "actions-preview.nvim")
time([[Config for actions-preview.nvim]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: nx.nvim
time([[Config for nx.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\anx\frequire\0", "config", "nx.nvim")
time([[Config for nx.nvim]], false)
-- Config for: neodev.nvim
time([[Config for neodev.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\flibrary\1\0\1\flibrary\0\fplugins\1\0\2\fplugins\0\ntypes\2\1\2\0\0\16nvim-dap-ui\nsetup\vneodev\frequire\0", "config", "neodev.nvim")
time([[Config for neodev.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\1\abo\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\2\rfiletype\0\fbuftype\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\4\20include_current\1\19autoselect_one\2\23other_win_hl_color\f#e35e4f\17filter_rules\0\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: session-lens
time([[Config for session-lens]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17session-lens\frequire\0", "config", "session-lens")
time([[Config for session-lens]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'DBUIToggle', function(cmdargs)
          require('packer.load')({'vim-dadbod-ui'}, { cmd = 'DBUIToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dadbod-ui'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DBUIToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DBUIAddConnection', function(cmdargs)
          require('packer.load')({'vim-dadbod-ui'}, { cmd = 'DBUIAddConnection', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dadbod-ui'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DBUIAddConnection ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DBUIFindBuffer', function(cmdargs)
          require('packer.load')({'vim-dadbod-ui'}, { cmd = 'DBUIFindBuffer', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dadbod-ui'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DBUIFindBuffer ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DBUI', function(cmdargs)
          require('packer.load')({'vim-dadbod-ui'}, { cmd = 'DBUI', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dadbod-ui'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DBUI ', 'cmdline')
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
