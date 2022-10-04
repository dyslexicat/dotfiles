return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lualine/lualine.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("kyazdani42/nvim-tree.lua")
	use("romgrk/barbar.nvim")
	use({ "nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim" })
	use("christoomey/vim-tmux-navigator")
	use("numToStr/Comment.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("ggandor/lightspeed.nvim")
	use("preservim/tagbar")
	use("tpope/vim-surround")
	use("vimwiki/vimwiki")
	use("rafamadriz/friendly-snippets")
	use("Pocco81/true-zen.nvim")
	use("lewis6991/gitsigns.nvim")
	use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })
	-- use 'rcarriga/nvim-notify'
	-- treesitter & treesitter modules
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-refactor")

	-- colorschemes
	use("EdenEast/nightfox.nvim")
	use("sainnhe/gruvbox-material")

	-- lsp
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("hrsh7th/cmp-buffer")
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("onsails/lspkind-nvim")
	use("jose-elias-alvarez/null-ls.nvim")
end)
