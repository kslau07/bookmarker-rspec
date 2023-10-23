let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/repos/bookmarker-rspec
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 spec/factories/users.rb
badd +33 spec/system/bookmark/create_spec.rb
badd +15 spec/system/bookmark/update_spec.rb
badd +10 spec/support/factory_bot.rb
badd +1 spec/routing/users_routing_spec.rb
badd +1 spec/routing/bookmarks_routing_spec.rb
badd +1 spec/requests/bookmarks_spec.rb
badd +1 spec/models/bookmark_spec.rb
badd +1 spec/models/user_spec.rb
badd +0 term://~/repos/bookmarker-rspec//48355:/bin/bash
badd +9 README.md
argglobal
%argdel
$argadd NvimTree_1
edit spec/support/factory_bot.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 94) / 188)
exe '2resize ' . ((&lines * 22 + 23) / 47)
exe 'vert 2resize ' . ((&columns * 157 + 94) / 188)
exe '3resize ' . ((&lines * 22 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 157 + 94) / 188)
argglobal
enew
file NvimTree_1
balt spec/factories/users.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd ~/repos/bookmarker-rspec
wincmd w
argglobal
balt ~/repos/bookmarker-rspec/README.md
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
let s:l = 10 - ((9 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 03|
lcd ~/repos/bookmarker-rspec
wincmd w
argglobal
if bufexists(fnamemodify("term://~/repos/bookmarker-rspec//48355:/bin/bash", ":p")) | buffer term://~/repos/bookmarker-rspec//48355:/bin/bash | else | edit term://~/repos/bookmarker-rspec//48355:/bin/bash | endif
if &buftype ==# 'terminal'
  silent file term://~/repos/bookmarker-rspec//48355:/bin/bash
endif
balt ~/repos/bookmarker-rspec/spec/models/user_spec.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 18 - ((13 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 0
lcd ~/repos/bookmarker-rspec
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 94) / 188)
exe '2resize ' . ((&lines * 22 + 23) / 47)
exe 'vert 2resize ' . ((&columns * 157 + 94) / 188)
exe '3resize ' . ((&lines * 22 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 157 + 94) / 188)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
