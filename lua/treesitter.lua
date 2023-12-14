require('nvim-treesitter').setup{}
require'nvim-treesitter.configs'.setup{
  ensure_installed = { "c_sharp", "angular", "css", "html", "json", "javascript", "lua", "sql", "typescript", "vim", "vimdoc" },
  ignore_install = { "smali", "tlaplus" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  },
  incremental_selection = {
    enable = true
  },
  indent = {
    enable = true
  }
}
