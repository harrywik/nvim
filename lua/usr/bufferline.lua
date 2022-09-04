local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup {
	options = {
		numbers = "ordinal",
		max_name_length = 30,
		diagnostics = false,
		offsets = {
			{filetype = "NvimTree", text = "WORKDIR:", padding = 3}
		},
		separator_style = "thick",
	}
}
