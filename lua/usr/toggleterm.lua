local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup {
	size = 10,
	open_mapping = [[<C-t>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	direction = "horizontal",
	persist_size = true,
	persist_mode = true,
	auto_scroll = true,
	close_on_exit = true,
	shell = vim.o.shell,
	start_in_insert = true,
}
