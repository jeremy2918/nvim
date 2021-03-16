if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'joshdick/onedark.vim'                                   " Theme
Plug 'ryanoasis/vim-devicons'                                 " Icons
Plug 'vim-airline/vim-airline'                                " Status bar theme config
Plug 'vim-airline/vim-airline-themes'                         " Status bar themes

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}               " VScode autocompetion like

" Search
Plug 'ctrlpvim/ctrlp.vim'                                     " Fuzzy find files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }           " Fuzzy find
Plug 'junegunn/fzf.vim'                                       " Fuzzy find

" Editor
Plug 'sheerun/vim-polyglot'                                   " Syntax and indentation support
Plug 'preservim/nerdcommenter'                                " Toggle comments
Plug 'HerringtonDarkholme/yats.vim'                           " TS Syntax
Plug 'mhinz/vim-startify'                                     " Start Screen
Plug 'mattn/emmet-vim'                                        " Emmet HTML tags completion

" Git
Plug 'mhinz/vim-signify'                                      " Git diff signs 
Plug 'tpope/vim-fugitive'                                     " Git browsing
Plug 'tpope/vim-rhubarb'                                      " Git browsing dependency

" Utils
Plug 'airblade/vim-rooter'                                    " Changes Vim working directory to project root

" :PlugInstall to install all plugings
call plug#end()

