-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim")

	--lua functions that many plugins use
	use("nvim-lua/plenary.nvim")

	--colour schemes--
	--	use("bluz71/vim-nightfly-guicolors") --preferred colourscheme
	use("folke/tokyonight.nvim")
	use("whatyouhide/vim-gotham")
	use("NLKNguyen/papercolor-theme")
	use("cseelus/vim-colors-lucid")
	use("dikiaap/minimalist")
	use("jaredgorski/spacecamp")
	use("vim-scripts/wombat256.vim")
	use("fmoralesc/molokayo")
	use("andreasvc/vim-256noir")
	use("jdsimcoe/abstract.vim")
	use("danilo-augusto/vim-afterglow")
	use("ayu-theme/ayu-vim")
	use("ajmwagar/vim-deus")
	use("yorickpeterse/happy_hacking.vim")
	use("cocopon/iceberg.vim")
	use("kristijanhusak/vim-hybrid-material")
	use("nanotech/jellybeans.vim")
	use("christophermca/meta5")
	use("Abstract-IDE/Abstract-cs")
	use("rafamadriz/neon")
	use("tomasiser/vim-code-dark")
	use("Th3Whit3Wolf/one-nvim")
	use("rose-pine/neovim")
	use("edeneast/nightfox.nvim")
	use("mcchrish/zenbones.nvim")
	use("mofiqul/vscode.nvim")
	use("zootedb0t/citruszest.nvim")
	use("embark-theme/vim")
	use("fenetikm/falcon")
	use("maxmx03/fluoromachine.nvim")
	use("bcicen/vim-vice")

	--tmux & split window navigation
	use("christoomey/vim-tmux-navigator")

	--maximizes and restores current window
	use("szw/vim-maximizer")
	--essential plugins
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")

	--commenting with gc
	use("numToStr/Comment.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	--fuzzy finding
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	--autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	--managing and installing lsp servers, linters & formatters
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- plugin for interacting with databases
	use("tpope/vim-dadbod")

	--formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	if packer_bootstrap then
		require("packer").sync()
	end
end)
