set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Configure neovim theme
if v:lua.vim.version().major == 0 && v:lua.vim.version().minor < 8
    " Configure the oxocarbon theme
    lua vim.opt.background = "light"
    lua vim.cmd("colorscheme oxocarbon")
else
    " Configure catppuccin on recent neovim
    colorscheme catppuccin
    lua require("catppuccin").setup({flavour = "latte"})
endif

" Set the cursor to a block in all modes
set guicursor =

" Configure the glow plugin
lua require('glow').setup({ style = "light", width = 80, })

" Python provider for neovim plugins
let g:python3_host_prog = '$HOME/.config/nvim/python/bin/python3'

" Disable Perl provider
let g:loaded_perl_provider = 0
