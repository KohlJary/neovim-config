local is_linux = vim.loop.os_uname().sysname == "Linux"
local is_win = vim.loop.os_uname().sysname == "Windows_NT"

local ng_cmd_path = vim.env.NPMDIR .. "/node_modules/@angular/language-server/index.js"
-- local cmd = { "node", ng_cmd_path, "--stdio", "--tsProbeLocations", vim.env.NPMDIR, "--ngProbeLocations", vim.env.NPMDIR }
local root_dir = require 'lspconfig'.util.root_pattern("angular.json")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local opd = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics)

local lspconfig = require('lspconfig')
local lsp_status = require('lsp-status')
local util = require 'lspconfig.util'
lsp_status.register_progress()
capabilities = vim.tbl_extend('keep', capabilities or {}, lsp_status.capabilities)

require("mason").setup({
    registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry"
    }
})
require("mason-lspconfig").setup()

if (is_win)
then
    -- require'lspconfig'.angularls.setup{
    --   on_attach = lsp_status.on_attach,
    --   capabilities = capabilities,
    --   cmd = cmd,
    --   -- root_dir = root_dir,
    --   on_new_config = function(new_config,new_root_dir)
    --     new_config.cmd = cmd
    --     -- new_root_dir = root_dir
    --   end
    -- }
    vim.cmd("let &shell = has('win32') ? 'powershell' : 'pwsh'")
    vim.cmd(
        "let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'")
    vim.cmd("let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'")
    vim.cmd("let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'")
    vim.cmd("set shellquote= shellxquote=")
else
    require 'lspconfig'.angularls.setup { on_attach = lsp_status.on_attach, capabilities = capabilities }
    local pipepath = vim.fn.stdpath("cache") .. "/server.pipe"
    if not vim.loop.fs_stat(pipepath) then
        vim.fn.serverstart(pipepath)
    end
end
-- Set up nvim-cmp.
local luasnip = require('luasnip')
local cmp = require('cmp')

local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-BS>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
                -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
                -- they way you will only jump inside the snippet region
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        -- { name = 'vsnip' }, -- For vsnip users.
        { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
    }, {
        { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

-- Set up lspconfig.
require('lspconfig').csharp_ls.setup {
    -- root_dir = function(bufnr, on_dir)
    --     local fname = vim.api.nvim_buf_get_name(bufnr)
    --     on_dir(util.root_pattern '*.sln' (fname) or util.root_pattern '*.csproj' (fname))
    -- end,
    root_dir = function(startpath)
        print(startpath)
        local dotnetsln = lspconfig.util.root_pattern("*.Dotnet.sln")
        return lspconfig.util.root_pattern("*.Dotnet.sln")(startpath)
            or lspconfig.util.root_pattern("*.sln")(startpath)
            or lspconfig.util.root_pattern("*.csproj")(startpath)
            or lspconfig.util.root_pattern("*.fsproj")(startpath)
            or lspconfig.util.root_pattern(".git")(startpath)
    end,
    filetypes = { 'cs' },
    init_options = {
        AutomaticWorkspaceInit = true,
    },
    on_attach = lsp_status.on_attach,
    capabilities = capabilities,
    single_file_support = false
}
local servers = {
    'angularls',
    'cssls',
    'gdscript',
    'html',
    'lua_ls',
    'sqlls',
    'ts_ls',
    'vimls'
}
for _, serverName in ipairs(servers) do
    require('lspconfig')[serverName].setup {
        on_attach = lsp_status.on_attach,
        capabilities = capabilities
    }
end
-- vim.lsp.config("roslyn", {})
-- vim.lsp.enable("roslyn")

require('nvim-lightbulb').setup({ autocmd = { enabled = true } })

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<leader>[', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<PageUp>', vim.diagnostic.goto_prev)
vim.keymap.set('n', 'gp', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>]', vim.diagnostic.goto_next)
vim.keymap.set('n', 'gn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<PageDown>', vim.diagnostic.goto_next)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', 'gO', vim.lsp.buf.document_symbol, opts)
        vim.keymap.set('n', '<M-K>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', 'wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', 'wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', 'wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        -- vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    end,
})

vim.api.nvim_create_autocmd('BufEnter', {
    group = vim.api.nvim_create_augroup('UserLspBufEnter', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        -- vim.lsp.buf.document_symbol(opts)
    end,
})

vim.api.nvim_create_autocmd('DiagnosticChanged', {
    callback = function(args)
        vim.diagnostic.setloclist({ open = false })
    end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        local mode = vim.api.nvim_get_mode().mode
        local filetype = vim.bo.filetype
        if vim.bo.modified == true and mode == 'n' and filetype ~= "oil" then
            vim.cmd('lua vim.lsp.buf.format()')
        else
        end
    end
})
