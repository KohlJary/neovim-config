require('toggleterm').setup{
  insert_mappings = false,
  terminal_mappings = true,
  direction = 'horizontal',
  size = 15,
  shade_terminals = false,
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<M-q>", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
}
