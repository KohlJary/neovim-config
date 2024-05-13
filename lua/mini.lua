require('mini.indentscope').setup()
require('mini.jump2d').setup({
  mappings = {
    start_jumping = "-"
  },
  view = {
    dim = true
  }
})
require('mini.move').setup({
  mappings = {
    left = "<Left>",
    down = "<Down>",
    up = "<Up>",
    right = "<Right>",
    line_left = "<Left>",
    line_down = "<Down>",
    line_up = "<Up>",
    line_right = "<Right>"
  }
})
require('mini.pairs').setup()
require('mini.surround').setup()
