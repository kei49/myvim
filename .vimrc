" プラグインをロードする
set nocompatible
filetype plugin on

" matchit
runtime macros/matchit.vim

" 数字は10進数に設定する
set nrformats=

" 履歴は200個くらいは遡りたい
set history=200

" タブを4文字に設定する, タブを半角スペースにする
set shiftwidth=2 softtabstop=2
set expandtab

" 改行時の自動インデント
set smartindent

" バックスペースを空白、行末、行頭でも利用可能にする
set backspace=indent,eol,start

" 列番号を表示する
set number

" タイトルを設置する
set title

" Exモードでの自動補完<C-d>をzsh風にする
set wildmode=full

" <C-p><C-n>で履歴を見る
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" hiddens設定を有効にする
set hidden

" バッファの移動をマッピング
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirs<CR>
nnoremap <silent> ]B :blast<CR>

" コマンドラインでのアクティブなファイルの含まれているディレクトリを手早く展開する
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" 方向キーを不能にする
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
