set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Set the cursor to a block in all modes
set guicursor =

" Configure the glow plugin
lua require('glow').setup({ style = "light", width = 80, })

" Set the theme
if v:lua.vim.version().major >= 0 && v:lua.vim.version().minor >= 8
    " Configure catppuccin on recent neovim
    colorscheme catppuccin-latte
else
    colo zellner
endif

lua require('render-markdown').setup({ code = { style = 'full' } })
