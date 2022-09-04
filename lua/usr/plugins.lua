-- plugins.lua
-- all plugins managed from here

local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim.git",
		install_path,
	}
	print "installing packer close and reopen nvim"
	vim.cmd [[packeradd paker.nvim]]
end

vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

return packer.startup(function(use)
	-- plugins

	-- general
	use "wbthomason/packer.nvim" -- packer manages itself
	use "nvim-lua/popup.nvim" -- for popups
	use "nvim-lua/plenary.nvim" -- dependency for other packages
	use "numToStr/Comment.nvim" -- easily comment and uncomment

	-- cmp plugins
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-nvim-lua"
	use "saadparwaiz1/cmp_luasnip"

	-- snippet plugins
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"

	-- LSP
	use "neovim/nvim-lspconfig" -- enable LSP
	use "williamboman/nvim-lsp-installer" -- LSP installer

	-- colorschemes
	use 'Mofiqul/vscode.nvim' -- vscode colorscheme

	-- telescope
	use "nvim-telescope/telescope.nvim"

	-- treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
	}
	use "p00f/nvim-ts-rainbow" -- for rainbow brackets and paretheses
	use "windwp/nvim-autopairs" -- for autopairing
	use "JoosepAlviste/nvim-ts-context-commentstring" -- make ts comment aware

	-- git
	use "lewis6991/gitsigns.nvim"

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
