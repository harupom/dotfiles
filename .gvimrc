" vim:set ts=8 sts=2 sw=2 tw=0: (���̍s�Ɋւ��Ă�:help modeline���Q��)
"---------------------------------------------------------------------------
" Bram���̒񋟂���ݒ����C���N���[�h (�ʃt�@�C��:vimrc_example.vim):
source $VIMRUNTIME/gvimrc_example.vim

"---------------------------------------------------------------------------
" �t�H���g�ݒ�:
"
if has('win32')
  " Windows�p
  "set guifont=�l�r_�S�V�b�N:h11:cSHIFTJIS
  set guifont=BDF_M+:h9:cSHIFTJIS
  "set guifont=Osaka�|����:h11:cSHIFTJIS
  " �s�Ԋu�̐ݒ�
  set linespace=1
elseif has('xfontset')
  " UNIX�p (xfontset���g�p)
  set guifontset=a14,r14,k14
elseif has('mac')
  "set guifont=Osaka�|����:h14
  set guifont=menlo:h14
endif

"---------------------------------------------------------------------------
" �E�C���h�E�Ɋւ���ݒ�:
"
" �E�C���h�E�̕�
set columns=160
" �E�C���h�E�̍���
set lines=55
" �R�}���h���C���̍���(GUI�g�p��)
set cmdheight=2

"---------------------------------------------------------------------------
" �I���W�i���ݒ�

set number

"
" �F�e�[�}
colors molokai

"
" ������ 0�`255
"set transparency=224

" IME ���[�h�Ɣ� IME ���[�h���̐F
if has('multi_byte_ime')
  "highlight Cursor guibg=Green guifg=NONE
  highlight CursorIM guibg=Orange guifg=NONE
  "highlight CursorIM guibg=Blue guifg=NONE
  "highlight CursorIM guibg=LightBlue guifg=NONE
  "highlight CursorIM guibg=LightRed guifg=NONE
  "highlight CursorIM guibg=DarkGreen guifg=NONE
endif

"set guioptions+=b   "���̃X�N���[���o�[��\��
"set nowrap
set guioptions-=b   "���̃X�N���[���o�[���\��
set wrap

set guioptions-=T   "�c�[���o�[���O��
set showtabline=2   "�^�u����ɕ\��

if has('gui_macvim')
"  set imdisable     "IM�𖳌���
  set antialias     "�A���`�G�C���A�X��L����
endif

" �N�����ɍő剻
"au GUIEnter * simalt ~x

" ���s�Ȃǂ̕\��
set list
set listchars=tab:^\ ,extends:<,trail:_,eol:<
