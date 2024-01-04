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
    config = { "\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4 auto_session_create_enabled\2\22auto_save_enabled\2 auto_session_use_git_branch\2\14log_level\tinfo\nsetup\17auto-session\frequire\0" },
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
    config = { "\27LJ\2\n�\4\0\0\6\0\15\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0034\4\a\0005\5\a\0>\5\1\0045\5\b\0>\5\2\0045\5\t\0>\5\3\0045\5\n\0>\5\4\0045\5\v\0>\5\5\0045\5\f\0>\5\6\4=\4\r\3=\3\14\2B\0\2\1K\0\1\0\vconfig\rshortcut\1\0\4\ngroup\vNumber\vaction\23Telescope dotfiles\bkey\6d\tdesc\17 dotfiles\1\0\4\ngroup\19DiagnosticHint\vaction\18Telescope app\bkey\6a\tdesc\r Apps\1\0\4\ngroup\nLabel\vaction\15Prosession\bkey\6p\tdesc\19 Prosession\1\0\4\ngroup\nLabel\vaction\19RestoreSession\bkey\6r\tdesc\26 Open Last Session\1\0\4\ngroup\nLabel\vaction\25Telescope find_files\bkey\6f\tdesc\14 Files\1\0\4\ngroup\14@property\vaction\17PackerUpdate\bkey\6u\tdesc\15 Update\16week_header\1\0\0\1\0\1\venable\2\1\0\1\ntheme\nhyper\nsetup\14dashboard\frequire\0" },
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
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n�\23\0\0\a\0J\0m6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\17\0005\3\16\0=\3\18\0025\3\19\0=\3\20\0025\3\22\0005\4\21\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4!\0005\5 \0=\5\"\4=\4#\3=\3$\0024\3\0\0=\3%\0025\3&\0005\4'\0=\4(\0035\4*\0005\5)\0=\5+\0045\5,\0005\6-\0=\6.\5=\5/\0045\0050\0005\0061\0=\6.\5=\0052\4=\0043\3=\0034\0024\3\0\0=\0035\0025\3<\0005\0046\0004\5\0\0=\0057\0044\5\0\0=\0058\0044\5\0\0=\0059\0044\5\0\0=\5:\0044\5\0\0=\5;\4=\4=\0035\4?\0005\5>\0=\0053\0045\5@\0=\5A\4=\0044\0034\4\0\0=\4%\3=\3B\0025\3C\0005\4E\0005\5D\0=\0053\4=\0044\3=\3F\0025\3I\0005\4G\0005\5H\0=\0053\4=\0044\3=\3#\2B\0\2\1K\0\1\0\1\0\0\1\0\a\aga\17git_add_file\agr\20git_revert_file\agp\rgit_push\6A\16git_add_all\agg\24git_commit_and_push\agu\21git_unstage_file\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\5\n<Del>\17close_window\t<bs>\17close_window\abd\18buffer_delete\6u\16navigate_up\n<F16>\17close_window\1\0\3\18show_unloaded\2\21group_empty_dirs\2\24follow_current_file\2\15filesystem\26fuzzy_finder_mappings\1\0\4\v<down>\21move_cursor_down\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\1\0\0\1\0\r\6c\rset_root\6#\17fuzzy_sorter\6/\17fuzzy_finder\6f\21filter_on_submit\6D\27fuzzy_finder_directory\n<c-x>\17clear_filter\a]g\22next_git_modified\n<F15>\17close_window\n<Del>\17close_window\t<bs>\17close_window\6H\18toggle_hidden\a[g\22prev_git_modified\6u\16navigate_up\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6p\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\24\6r\vrename\6R\frefresh\6s\16open_vsplit\6l\18focus_preview\6S\15open_split\6m\tnone\6?\14show_help\6<\16prev_source\6>\16next_source\n<esc>\19revert_preview\t<cr>\topen\18<2-LeftMouse>\topen\6x\15close_node\6d\vdelete\6q\17close_window\n<M-m>\tmove\6t\16open_tabnew\6P\25paste_from_clipboard\6X\tcopy\6o\topen\6w\28open_with_window_picker\6A\18add_directory\6y\22copy_to_clipboard\6z\20close_all_nodes\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\nfloat\rcommands\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\frenamed\b\rmodified\5\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\runstaged\b☒\fignored\b\14untracked\b\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\fdefault\6*\18folder_closed\b\14highlight\20NeoTreeFileIcon\17folder_empty\bﰊ\16folder_open\b\vindent\1\0\t\16indent_size\3\2\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\fpadding\3\1\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\fsources\1\0\5\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\26sort_case_insensitive\1\1\5\0\0\15filesystem\fbuffers\15git_status\21document_symbols\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23DiagnosticSignHint\ttext\b\23DiagnosticSignHint\1\0\2\vtexthl\23DiagnosticSignInfo\ttext\t \23DiagnosticSignInfo\1\0\2\vtexthl\23DiagnosticSignWarn\ttext\t \23DiagnosticSignWarn\1\0\2\vtexthl\24DiagnosticSignError\ttext\t \24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
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
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\23other_win_hl_color\f#e35e4f\20include_current\1\19autoselect_one\2\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
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
  ["unicode.vim"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\unicode.vim",
    url = "https://github.com/chrisbra/unicode.vim"
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
  ["vim-dadbod"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "C:\\Users\\kohlbern.jary\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-dadbod-ui",
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
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\23other_win_hl_color\f#e35e4f\20include_current\1\19autoselect_one\2\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n�\23\0\0\a\0J\0m6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\17\0005\3\16\0=\3\18\0025\3\19\0=\3\20\0025\3\22\0005\4\21\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4!\0005\5 \0=\5\"\4=\4#\3=\3$\0024\3\0\0=\3%\0025\3&\0005\4'\0=\4(\0035\4*\0005\5)\0=\5+\0045\5,\0005\6-\0=\6.\5=\5/\0045\0050\0005\0061\0=\6.\5=\0052\4=\0043\3=\0034\0024\3\0\0=\0035\0025\3<\0005\0046\0004\5\0\0=\0057\0044\5\0\0=\0058\0044\5\0\0=\0059\0044\5\0\0=\5:\0044\5\0\0=\5;\4=\4=\0035\4?\0005\5>\0=\0053\0045\5@\0=\5A\4=\0044\0034\4\0\0=\4%\3=\3B\0025\3C\0005\4E\0005\5D\0=\0053\4=\0044\3=\3F\0025\3I\0005\4G\0005\5H\0=\0053\4=\0044\3=\3#\2B\0\2\1K\0\1\0\1\0\0\1\0\a\aga\17git_add_file\agr\20git_revert_file\agp\rgit_push\6A\16git_add_all\agg\24git_commit_and_push\agu\21git_unstage_file\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\5\n<Del>\17close_window\t<bs>\17close_window\abd\18buffer_delete\6u\16navigate_up\n<F16>\17close_window\1\0\3\18show_unloaded\2\21group_empty_dirs\2\24follow_current_file\2\15filesystem\26fuzzy_finder_mappings\1\0\4\v<down>\21move_cursor_down\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\1\0\0\1\0\r\6c\rset_root\6#\17fuzzy_sorter\6/\17fuzzy_finder\6f\21filter_on_submit\6D\27fuzzy_finder_directory\n<c-x>\17clear_filter\a]g\22next_git_modified\n<F15>\17close_window\n<Del>\17close_window\t<bs>\17close_window\6H\18toggle_hidden\a[g\22prev_git_modified\6u\16navigate_up\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6p\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\24\6r\vrename\6R\frefresh\6s\16open_vsplit\6l\18focus_preview\6S\15open_split\6m\tnone\6?\14show_help\6<\16prev_source\6>\16next_source\n<esc>\19revert_preview\t<cr>\topen\18<2-LeftMouse>\topen\6x\15close_node\6d\vdelete\6q\17close_window\n<M-m>\tmove\6t\16open_tabnew\6P\25paste_from_clipboard\6X\tcopy\6o\topen\6w\28open_with_window_picker\6A\18add_directory\6y\22copy_to_clipboard\6z\20close_all_nodes\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\nfloat\rcommands\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\frenamed\b\rmodified\5\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\runstaged\b☒\fignored\b\14untracked\b\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\fdefault\6*\18folder_closed\b\14highlight\20NeoTreeFileIcon\17folder_empty\bﰊ\16folder_open\b\vindent\1\0\t\16indent_size\3\2\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\fpadding\3\1\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\fsources\1\0\5\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\26sort_case_insensitive\1\1\5\0\0\15filesystem\fbuffers\15git_status\21document_symbols\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23DiagnosticSignHint\ttext\b\23DiagnosticSignHint\1\0\2\vtexthl\23DiagnosticSignInfo\ttext\t \23DiagnosticSignInfo\1\0\2\vtexthl\23DiagnosticSignWarn\ttext\t \23DiagnosticSignWarn\1\0\2\vtexthl\24DiagnosticSignError\ttext\t \24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4 auto_session_create_enabled\2\22auto_save_enabled\2 auto_session_use_git_branch\2\14log_level\tinfo\nsetup\17auto-session\frequire\0", "config", "auto-session")
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
