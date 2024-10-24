" Plugins to install via plug.vim
call plug#begin(expand('~/.vim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 
Plug 'airblade/vim-gitgutter'   
Plug 'preservim/nerdtree' 
Plug 'junegunn/fzf' 
Plug 'junegunn/fzf.vim' 
Plug 'godlygeek/tabular'   
Plug 'preservim/vim-markdown' 
Plug 'elzr/vim-json'     
Plug 'pearofducks/ansible-vim' 
Plug 'tell-k/vim-autopep8' 
Plug 'dense-analysis/ale' 
Plug 'mpeterv/luacheck' 
Plug 'https://tpope.io/vim/fugitive.git' 
Plug 'mcchrish/nnn.vim' 
Plug 'nyoom-engineering/oxocarbon.nvim', { 'as': 'oxocarbon' }
Plug 'ellisonleao/glow.nvim', { 'as': 'glow' }

call plug#end()
