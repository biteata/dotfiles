local function colorscheme(color)
	vim.cmd.colorscheme(color)
end

require("koda").setup {
    transparent = true,
    bold = false,

    styles = {
        functions = {
            bold = false,
        }
    },
}

--colorscheme("koda-dark")
colorscheme("lunaperche")
--colorscheme("jellybeans-nvim")
--colorscheme("gruvbox-material")
