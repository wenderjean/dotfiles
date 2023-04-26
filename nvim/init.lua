require("user.options")
require("user.plugins")
require("user.theme")
require("user.feline")
require("user.gitsigns")
require("user.bufferline")

vim.cmd("autocmd BufReadPost * set bufhidden=wipe")
