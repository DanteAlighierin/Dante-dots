if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Declare the list of plugins.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Utils
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""
Plug 'preservim/nerdtree'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'shougo/neocomplcache.vim'
Plug 'hdima/python-syntax'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => List ends here.
" => Plugins become visible to Vim after this call.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()





filetype plugin on

"Uncomment to override defaults:
""let g:instant_markdown_slow = 1
""let g:instant_markdown_autostart = 0
""let g:instant_markdown_open_to_the_world = 1
""let g:instant_markdown_allow_unsafe_content = 1
""let g:instant_markdown_allow_external_content = 0
""let g:instant_markdown_mathjax = 1
""let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
""let g:instant_markdown_autoscroll = 0
""let g:instant_markdown_port = 8888
""let g:instant_markdown_python = 1


"""""""""""""""""NERDTRE""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>n :NERDTreeFocus<CR>

nnoremap <C-n> :NERDTree<CR>

nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-f> :NERDTreeFind<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""Theme and colors"""""""""""""""""""""""""""""

set background=dark
colorscheme hybrid
"hi Normal guibg=NONE ctermbg=NONE
let g:neocomplcache_enable_at_startup = 1
let g:airline_theme='bubblegum'
syntax on

""""""""""""""""""""Variables""""""""""""""""""""""""""""""""""""
set t_Co=256
set termencoding=utf-8
set t_vb=
set visualbell t_vb=
set showtabline=1
set encoding=utf-8
set fileencodings=utf8,cp1251



filetype plugin on
