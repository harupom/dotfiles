" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)
"---------------------------------------------------------------------------
" Bram氏の提供する設定例をインクルード (別ファイル:vimrc_example.vim):
source $VIMRUNTIME/gvimrc_example.vim

"---------------------------------------------------------------------------
" フォント設定:
"
if has('win32')
  " Windows用
  "set guifont=ＭＳ_ゴシック:h11:cSHIFTJIS
  set guifont=BDF_M+:h9:cSHIFTJIS
  "set guifont=Osaka−等幅:h11:cSHIFTJIS
  " 行間隔の設定
  set linespace=1
elseif has('xfontset')
  " UNIX用 (xfontsetを使用)
  set guifontset=a14,r14,k14
elseif has('mac')
  "set guifont=Osaka−等幅:h14
  "set guifont=menlo:h14
  set guifont=ricty:h16
endif

"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
set columns=160
" ウインドウの高さ
set lines=55
" コマンドラインの高さ(GUI使用時)
set cmdheight=2

"---------------------------------------------------------------------------
" オリジナル設定

" 色テーマ
colors molokai

"
" 半透明 0〜255
"set transparency=224

" IME モードと非 IME モード時の色
if has('multi_byte_ime')
  "highlight Cursor guibg=Green guifg=NONE
  highlight CursorIM guibg=Orange guifg=NONE
  "highlight CursorIM guibg=Blue guifg=NONE
  "highlight CursorIM guibg=LightBlue guifg=NONE
  "highlight CursorIM guibg=LightRed guifg=NONE
  "highlight CursorIM guibg=DarkGreen guifg=NONE
endif

"set guioptions+=b   "下のスクロールバーを表示
"set nowrap
set guioptions-=b   "下のスクロールバーを非表示
set wrap

set guioptions-=T   "ツールバーを外す
set showtabline=2   "タブを常に表示

if has('gui_macvim')
"  set imdisable     "IMを無効に
  set antialias     "アンチエイリアスを有効に
endif

" 起動時に最大化
"au GUIEnter * simalt ~x

" 改行などの表示
set list
set listchars=tab:^\ ,extends:<,trail:_,eol:<
