set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Set the cursor to a block in all modes
set guicursor =

" Configure the glow plugin
lua require('glow').setup({ style = "light", width = 80, })

" Python provider for neovim plugins
let g:python3_host_prog = '$HOME/.config/nvim/python/bin/python3'

" Disable Perl provider
let g:loaded_perl_provider = 0

set background="light"
colorscheme "oxocarbon"
