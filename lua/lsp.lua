local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/lib/omnisharp-roslyn/OmniSharp"
require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}
