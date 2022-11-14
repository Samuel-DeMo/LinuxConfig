return require('packer').startup(function(use)

	-- Package Manager
	use 'wbthomason/packer.nvim'

	-- -- Colorscheme
	-- use 'RRethy/nvim-base16'
	use 'navarasu/onedark.nvim'

	-- Plenary
	use "nvim-lua/plenary.nvim"

	-- Lua Line
	use 'nvim-lualine/lualine.nvim'

	-- Lsp Config
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-path'
	use 'onsails/lspkind.nvim'
	use 'hrsh7th/nvim-cmp'

	-- Commentary
	use 'terrortylor/nvim-comment'

	-- Surround
	use "kylechui/nvim-surround"

	-- Auto Pair
	use 'windwp/nvim-autopairs'

	-- Telescope
	use 'nvim-telescope/telescope.nvim'

	-- Copilot
	use 'zbirenbaum/copilot.lua'
	use { 'zbirenbaum/copilot-cmp', after = { "copilot.lua"} }

	-- AsyncRun
	use 'skywind3000/asyncrun.vim'

	-- Snippet
	use 'rafamadriz/friendly-snippets'

	-- TreeSitter
	use 'nvim-treesitter/nvim-treesitter'

	-- BufferLine
	use {'akinsho/bufferline.nvim', tag = "v2.*"}

	-- Trim Whitespace
	use {'cappyzawa/trim.nvim'}

	-- Harpoon
	use 'ThePrimeagen/harpoon'

	-- Neogit
	use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

		-- Terminal
	use { "akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end }

end)
