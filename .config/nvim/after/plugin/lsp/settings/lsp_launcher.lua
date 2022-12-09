require'lspconfig'.sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

require'lspconfig'.tsserver.setup {
}

require'lspconfig'.clangd.setup {
}

require'lspconfig'.intelephense.setup {
}

require'lspconfig'.cssls.setup {
}

require'lspconfig'.html.setup {
}

require'lspconfig'.jdtls.setup {
}

require'lspconfig'.emmet_ls.setup {
}

require'lspconfig'.csharp_ls.setup {

}
require'lspconfig'.rust_analyzer.setup {

}
