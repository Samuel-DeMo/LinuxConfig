local cmp = require('cmp')
local cmp_nvim_lsp = require('cmp_nvim_lsp')
local lspkind = require('lspkind')
local luasnip = require('luasnip')
local nvim_lsp = require('lspconfig')

local servers = { 'tsserver', 'clangd', 'html', 'intelephense', 'jdtls', 'sumneko_lua', 'emmet_ls', 'jsonls', 'csharp_ls' }

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup {}
end

local on_attach = function(client, bufnr)

	-- Disable Autoformat
	client.resolved_capabilities.document_formatting = false
	client.resolved_capabilities.document_range_formatting = false
end

-- nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

--
-- Nvim-cmp
--

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

cmp.setup {
	formatting = {
		format = lspkind.cmp_format()
	},
	mapping = {
		['<C-p>'] = cmp.mapping.select_prev_item(),
		-- ['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		--    ['<C-Space>'] = cmp.mapping.complete(),
		--    ['<C-e>'] = cmp.mapping.close(),
		['<Tab>'] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		},
		['<C-n>'] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end,
		['<S-Tab>'] = function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end,
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	sources = {
		{ name = 'luasnip' },
		{ name = 'nvim_lsp' },
		{ name = 'copilot' },
		{ name = 'path' }
	},
}

local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
