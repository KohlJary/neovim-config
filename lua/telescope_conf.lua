require('telescope').setup{
  extensions = {
    file_browser = {
      theme = "ivy"
    }
  }
}
require('telescope').load_extension "file_browser"
require('telescope').load_extension "prosession"
