if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

NeoBundle 'kien/ctrlp.vim'
NeoBundle 'koron/cmigemo'

filetype plugin indent on
NeoBundleCheck

set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab
set number
set nowrap
set fileencoding=utf-8
set scrolloff=999
set modeline
set helplang=ja
set autoread
set directory=/tmp
set backupdir=/tmp
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,utf-8,euc-jp,cp932
set shellslash
set autoindent
set backspace=indent,eol,start
set formatoptions=q
set autoread
set noswapfile
set expandtab
set hidden
set backspace=indent,eol,start
set vb t_vb=
set showmatch
set wildmenu
set wildchar=<tab>
set wildmode=list:full
set history=1000
set wrapscan
set ignorecase
set smartcase 
set hlsearch

"ctrlp.vim
let g:ctrlp_use_migemo = 1
let g:ctrlp_clear_cache_on_exit = 0   " 終了時キャッシュをクリアしない
let g:ctrlp_mruf_max            = 500 " MRUの最大記録数
let g:ctrlp_open_new_file       = 1   " 新規ファイル作成時にタブで開く
let g:ctrlp_highlight_match = [1, 'IncSearch']
let g:ctrlp_by_filename = 1
let g:ctrlp_jump_to_buffer = 2
