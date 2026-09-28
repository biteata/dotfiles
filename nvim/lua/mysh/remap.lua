vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>rg", ":!go run " .. vim.fn.expand("%"))

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("v", "m", '"zy:<C-U>Man <C-R>z<CR>', {
  silent = true,
  desc = "Open man page for selection",
})

vim.keymap.set("n", "M", function()
  local word = vim.fn.expand("<cword>")
  vim.cmd("Man " .. vim.fn.fnameescape(word))
end, {
  silent = true,
  desc = "Open man page for word under cursor",
})
