" Vim color file
"
" Author: Kenji Garland
"
" Based: (very heavily!) on Molokai by Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="mollusk"


if &t_Co > 255
   let g:mollusk#colors = {}
   hi Normal          ctermfg=248
   let g:mollusk#colors.normal = 248
   hi CursorLine                  ctermbg=236   cterm=none
   hi CursorLineNr    ctermfg=212               cterm=none
   hi Boolean         ctermfg=135
   hi Character       ctermfg=159
   hi Number          ctermfg=135
   let g:mollusk#colors.purple = 135
   hi String          ctermfg=159
   let g:mollusk#colors.cyan = 159
   hi Conditional     ctermfg=197               cterm=bold
   let g:mollusk#colors.red = 197
   hi Constant        ctermfg=135               cterm=bold
   hi Cursor          ctermfg=16  ctermbg=239
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=16    cterm=reverse
   hi DiffChange                  ctermbg=236
   hi DiffDelete      ctermfg=234 ctermbg=233
   hi DiffText                    ctermbg=none  cterm=reverse

   " gitlike diff files
   hi diffLine        ctermfg=6
   hi diffAdded       ctermfg=2
   hi diffRemoved     ctermfg=1
   hi diffFile        ctermfg=15
   hi diffOnly        ctermfg=6

   hi Directory       ctermfg=38                cterm=none
   hi Error           ctermfg=212 ctermbg=53
   let g:mollusk#colors.pink = 212
   hi ErrorMsg        ctermfg=199 ctermbg=none  cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=24  ctermbg=none
   hi Folded          ctermfg=24  ctermbg=none
   hi Function        ctermfg=118
   hi Identifier      ctermfg=219
   let g:mollusk#colors.pale_pink = 219
   hi Ignore          ctermfg=244
   hi IncSearch       ctermfg=225 ctermbg=162   cterm=none

   hi Keyword         ctermfg=197               cterm=bold
   hi Label           ctermfg=229               cterm=none
   let g:mollusk#colors.yellow = 229
   hi Macro           ctermfg=193

   hi MatchParen                  ctermbg=237   cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=197

   " complete menu
   hi Pmenu           ctermfg=none ctermbg=16
   hi PmenuSel        ctermfg=81  ctermbg=235
   hi PmenuSbar                   ctermbg=16
   hi PmenuThumb      ctermfg=81  ctermbg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   let g:mollusk#colors.green = 118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=197               cterm=bold
   hi Search          ctermfg=225 ctermbg=89
   hi SearchBlink     ctermfg=89 ctermbg=225    cterm=none

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=234
   hi SpecialChar     ctermfg=197               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81
   if has("spell")
       hi SpellBad    ctermfg=169 ctermbg=none  cterm=underline
       hi SpellCap   ctermfg=none ctermbg=none  cterm=none
       hi SpellLocal  ctermfg=169 ctermbg=none  cterm=underline
       hi SpellRare   ctermfg=169 ctermbg=none  cterm=underline
   endif
   hi Statement       ctermfg=197               cterm=bold
   hi StatusLine      ctermfg=253 ctermbg=237   cterm=none

   hi StatusLineNC    ctermfg=242 ctermbg=235   cterm=none
   hi StorageClass    ctermfg=38
   hi Structure       ctermfg=81
   hi TabLine         ctermfg=242 ctermbg=235   cterm=underline
   hi TabLineSel      ctermfg=253 ctermbg=238   cterm=none
   hi TabLineFill     ctermfg=237 ctermbg=235   cterm=underline
   hi Tag             ctermfg=197
   hi Title           ctermfg=159
   hi Todo            ctermfg=231 ctermbg=none  cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   let g:mollusk#colors.blue = 81
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=234 ctermbg=none  cterm=bold
   hi VisualNOS                   ctermbg=16    cterm=reverse
   hi Visual                      ctermbg=16    cterm=reverse
   hi WarningMsg      ctermfg=229
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Comment         ctermfg=238
   hi CursorColumn                ctermbg=236
   hi ColorColumn                 ctermbg=236
   hi LineNr          ctermfg=237 ctermbg=234
   hi NonText         ctermfg=24

   hi SpecialKey      ctermfg=24

end

hi link htmlTag Statement
hi link htmlEndTag Statement
hi link htmlTagName Statement
hi link htmlSpecialTagName Label

hi link jsAssignExpIdent Identifier

hi link Noise Delimiter

hi link netrwClassify NonText

hi link vimOption Constant
hi link qfSeparator Delimiter

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
