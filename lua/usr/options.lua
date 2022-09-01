local options = {
        -- line numbers
        number = true,
        relativenumber = true,
        -- tab
        tabstop = 4,
        shiftwidth = 4,
        softtabstop = 4,
        expandtab = true,
}
    
for k, v in pairs(options) do
        vim.opt[k] = v
end

-- iskeyword
vim.cmd[[set iskeyword+=-]]
