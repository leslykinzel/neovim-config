function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "#010101" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#010101" })
end

-- call to remove background
-- ColorMyPencils()
