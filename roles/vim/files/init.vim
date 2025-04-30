set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Set the cursor to a block in all modes
set guicursor =

" Following only applies if we have lua
if has('lua')

    " Configure the glow plugin
    lua require('glow').setup({ style = "light", width = 80, })

    " Set the theme
    if v:lua.vim.version().major >= 0 && v:lua.vim.version().minor >= 8
        " Configure catppuccin on recent neovim
        colorscheme catppuccin-latte
    endif
else
    colo zellner
endif
