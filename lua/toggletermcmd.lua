local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ 
  cmd = "lazygit", 
  count = 5,
  dir="git_dir", 
  hidden = true, 
  direction="float",
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
})
local gitui = Terminal:new({ cmd = "gitui", count = 6, dir=git_dir, hidden = true, direction="float" })
local twui = Terminal:new({ cmd = "taskwarrior-tui -d ./.task --taskdata ./.task", count = 7, dir=git_dir, hidden = true, direction="float" })
local is_win = vim.loop.os_uname().sysname == "Windows_NT"
if(is_win)
  then
  twui = Terminal:new({ cmd = "wsl taskwarrior-tui -d ./.task --taskdata ./.task", count = 7, dir=git_dir, hidden = true, direction="float" })
end
local serv = Terminal:new({ dir=git_dir, hidden = true, direction="vertical" })
local float = Terminal:new({ dir=git_dir, hidden = true, direction="float" })

function _lazygit_toggle()
  lazygit:toggle()
end

function _gitui_toggle()
  gitui:toggle()
end

function _twui_toggle()
  twui:toggle()
end

function _serv_toggle()
  serv:toggle()
end

function _float_toggle()
  float:toggle()
end
