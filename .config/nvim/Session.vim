let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.dotfiles/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 init.lua
badd +1 ~/.dotfiles/.config/nvim/.gitignore
badd +1 ~/.dotfiles/.config/nvim/Session.vim
badd +42 after/plugin/oil.lua
badd +9 after/plugin/harpoon.lua
badd +1 lua/bliss/set.lua
badd +82 lua/bliss/packer.lua
badd +21 ~/.dotfiles/.config/nvim/lua/bliss/remap.lua
badd +11 after/plugin/lsp.lua
badd +26 after/plugin/multicursor.lua
badd +1 ~/.dotfiles/.config/nvim/after/plugin/lualine.lua
badd +1 oil:///home/bliss/.dotfiles/.config/nvim/
badd +1 ~/.dotfiles/.config/nvim/after/plugin/ts-formatter.lua
badd +27 ~/.dotfiles/.config/nvim/after/plugin/js-formatter.lua
badd +1 after/plugin/surround.lua
badd +1 ~/.dotfiles/.config/nvim/after/plugin/trouble.lua
argglobal
%argdel
$argadd oil:///home/bliss/.dotfiles/.config/nvim/
edit lua/bliss/packer.lua
argglobal
balt ~/.dotfiles/.config/nvim/after/plugin/trouble.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 84 - ((13 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 84
normal! 031|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
