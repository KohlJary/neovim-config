local Terminal  = require('toggleterm.terminal').Terminal
local gitui = Terminal:new({ cmd = "gitui", dir=git_dir, hidden = true, direction="float" })
local twui = Terminal:new({ cmd = "taskwarrior-tui", dir=git_dir, hidden = true, direction="float" })

function _gitui_toggle()
  gitui:toggle()
end

function _twui_toggle()
  twui:toggle()
end
