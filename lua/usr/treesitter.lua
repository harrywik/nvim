local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup {
	ensure_installed = "all",
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = { "" },
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = 500,
	},
	autopairs = {
		enable = true,
	},
	indent = {
		enable = true,
		disable = { "yaml" },
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false
	}
}
