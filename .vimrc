" vim:set ts=8 sts=2 sw=2 tw=0: (���̍s�Ɋւ��Ă�:help modeline���Q��)
"---------------------------------------------------------------------------
" �I���W�i���ݒ�

" �o�b�N�A�b�v���s��Ȃ�
set nobackup

" �N�������b�Z�[�W�̍폜
set shortmess+=I

" �t���[�J�[�\�����[�h�̐ݒ�
" block  = �r�W���A���u���b�N���[�h��
" insert = �C���T�[�g���[�h��
" all    = �S�Ẵ��[�h��
set virtualedit=all

" 
" TAB�Ɋւ���ݒ�
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

" 
" �肢
map <F5> mX:sp ~/.fortunes<CR>ggd/^--/<CR>Gp:wq<CR>'XGA<CR><Esc>p`X

"
" �F�e�[�}
colorscheme evening

"
" �����R�[�h�����X�e�[�^�X���C���ɕ\��
set statusline=%n:\ %<%f\ %m%r%h%w[%{&fileformat}][%{has('multi_byte')&&\ &fileencoding!=''?&fileencoding:&encoding}]\ 0x%B=%b%=%l,%c\ %P


" NeoBundle�ݒ�
if 1 && filereadable($HOME . '/.bundle')
  source $HOME/.bundle
endif
