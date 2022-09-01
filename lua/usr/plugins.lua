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

    -- cmp plugins
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "saadparwaiz1/cmp_luasnip"

    -- snippet plugins
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- colorschemes
    use 'Mofiqul/vscode.nvim' -- vscode colorscheme
     
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
