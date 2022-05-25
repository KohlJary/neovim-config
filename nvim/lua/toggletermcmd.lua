local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", dir=git_dir, hidden = true, direction="float" })
local gitui = Terminal:new({ cmd = "gitui", dir=git_dir, hidden = true, direction="float" })
local twui = Terminal:new({ cmd = "taskwarrior-tui", dir=git_dir, hidden = true, direction="float" })

function _lazygit_toggle()
  lazygit:toggle()
end

function _gitui_toggle()
  gitui:toggle()
end

function _twui_toggle()
  twui:toggle()
end
