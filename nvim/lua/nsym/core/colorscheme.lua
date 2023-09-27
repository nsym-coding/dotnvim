local status, fm = pcall(require, "fluoromachine")
if not status then
	print("Colorscheme not found!")
	return
end

fm.setup({
	glow = true,
	theme = "delta",
	transparent = "full",
	brightness = 0.15,
})

vim.cmd.colorscheme("fluoromachine")
