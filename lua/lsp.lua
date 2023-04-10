local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/lib/omnisharp-roslyn/OmniSharp"
local is_linux = vim.loop.os_uname().sysname == "Linux"
local is_win = vim.loop.os_uname().sysname == "Windows_NT"

local ng_cmd_path = vim.env.NPMDIR .. "/@angular/language-server"
local cmd = { "node", ng_cmd_path, "--stdio", "--tsProbeLocations", vim.env.NPMDIR, "--ngProbeLocations", vim.env.NPMDIR }
if(is_win)
  then
  require'lspconfig'.angularls.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = cmd,
    on_new_config = function(new_config,new_root_dir)
      new_config.cmd = cmd
    end
  }
  vim.cmd("let &shell = has('win32') ? 'powershell' : 'pwsh'")
  vim.cmd("let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'")
  vim.cmd("let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'")
  vim.cmd("let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'")
  vim.cmd("set shellquote= shellxquote=")
  require'lspconfig'.csharp_ls.setup{}
else
  require'lspconfig'.angularls.setup{}
end
require'lspconfig'.tsserver.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.jsonls.setup{}
