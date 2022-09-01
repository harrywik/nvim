local colorscheme = "vscode"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found... maybe you need to run :PackerInstall") 
    return
end
