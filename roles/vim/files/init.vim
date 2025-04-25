set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Set the cursor to a block in all modes
set guicursor =

" Configure the glow plugin
lua require('glow').setup({ style = "light", width = 80, })
