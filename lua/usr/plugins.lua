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
    use "wbthomason/packer.nvim" -- packer manages itself
    use "nvim-lua/popup.nvim" -- for popups
    use "nvim-lua/plenary.nvim" -- dependency for other packages
    -- colorschemes
    use 'Mofiqul/vscode.nvim' -- vscode colorscheme
     
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
