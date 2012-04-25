" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)
"---------------------------------------------------------------------------
" オリジナル設定

" バックアップを行わない
set nobackup

" 起動時メッセージの削除
set shortmess+=I

" フリーカーソルモードの設定
" block  = ビジュアルブロックモードで
" insert = インサートモードで
" all    = 全てのモードで
set virtualedit=all

" 
" TABに関する設定
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

" 
" 占い
map <F5> mX:sp ~/.fortunes<CR>ggd/^--/<CR>Gp:wq<CR>'XGA<CR><Esc>p`X

"
" 色テーマ
colorscheme evening

"
" 文字コード情報をステータスラインに表示
set statusline=%n:\ %<%f\ %m%r%h%w[%{&fileformat}][%{has('multi_byte')&&\ &fileencoding!=''?&fileencoding:&encoding}]\ 0x%B=%b%=%l,%c\ %P


" NeoBundle設定
if 1 && filereadable($HOME . '/.bundle')
  source $HOME/.bundle
endif
