require("nvim-lsp-installer").setup {
	ensure_installed = {"ccls", "clangd", "emmet_ls", "html", "intelephense", "jdtls", "jedi_language_server", "sumneko_lua", "tsserver", "jsonls", "csharp_ls"},
	automatic_installation = true,
}
