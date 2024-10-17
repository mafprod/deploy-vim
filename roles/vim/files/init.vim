set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

colorscheme catppuccin-latte " catppuccin-latte catppuccin-frappe catppuccin-macchiato catppuccin-mocha
set guicursor = "n-v-i-c:block-Cursor"

require('glow').setup({
  style = "light",
  width = 80,
})
