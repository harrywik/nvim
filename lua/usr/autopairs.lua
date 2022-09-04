local autopairs_ok, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_ok then
	return
end

autopairs.setup {
	check_ts = true,
	disable_filetypes = {
		"TelescopePrompt", "spectre_panel"
	},
}
