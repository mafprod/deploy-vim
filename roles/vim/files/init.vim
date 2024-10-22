set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Set the cursor to a block in all modes
set guicursor =

" Setup catppuccin to get the colors right
lua vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha
lua require("catppuccin").setup()
lua vim.cmd [[colorscheme catppuccin]]

" Configure the glow plugin
lua require('glow').setup({ style = "light", width = 80, })

" Python provider for neovim plugins
let g:python3_host_prog = '$HOME/.config/nvim/python/bin/python3'
