local options = {
  -- line numbers
  number = true,
  relativenumber = true,
  -- tab
  tabstop = 2,
  shiftwidth = 2,
  softtabstop = 2,
  expandtab = false,
	scrolloff = 999,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- iskeyword
vim.cmd[[set iskeyword+=-]]
