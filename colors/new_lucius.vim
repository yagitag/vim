" ============================================================================
" Name:     Lucius vim color scheme
" Author:   Jonathan Filip <jfilip1024@gmail.com>
" Version:  8.1.4
" ----------------------------------------------------------------------------
"
" Light and dark color scheme for GUI and 256 color terminal.
"
" There are several options available to customize the color scheme to your
" own tastes. This is particularly useful when you have to work in different
" environments at different times (home, work, day, night, etc).
"
" The GUI and 256 color terminal versions of this color scheme are identical.
"
" You can set up the color scheme by manually setting the options you want or
" by choosing one of the presets defined. These presets are loaded after you
" first source the color scheme file and are all commands that start with
" 'Lucius'.
"
" I have also started to create color schemes for different applications. I
" have been using them for PuTTY, iTerm2, and Visual Studio, but will keep
" adding more as I go along. You can find the files for these on Github:
"
" https://github.com/jonathanfilip/lucius
"
" You can also clone the following repository if you use Pathogen or something
" similar. It holds the vim color scheme in a 'colors' directory:
"
" https://github.com/jonathanfilip/vim-lucius
"
"
"
" Presets:
"
" There are several presets available that will set all the options for you.
" There are screenshots of each preset below:
"
" * LuciusDark (dark default): http://i.imgur.com/LsZbF.png
" * LuciusDarkHighContrast: http://i.imgur.com/e70i9.png
" * LuciusDarkLowContrast: http://i.imgur.com/Hmw8s.png
" * LuciusBlack: http://i.imgur.com/iD4ri.png
" * LuciusBlackHighContrast: http://i.imgur.com/lHvTJ.png
" * LuciusBlackLowContrast: http://i.imgur.com/oZLkg.png
"
" * LuciusLight (light default): http://i.imgur.com/soYD8.png
" * LuciusLightLowContrast: http://i.imgur.com/95I86.png
" * LuciusWhite: http://i.imgur.com/wDzkz.png
" * LuciusWhiteLowContrast: http://i.imgur.com/jlUf4.png
"
" To use the presets, you just need to set the color scheme first. In your
" vimrc, you can just do this:
"
" colorscheme lucius
" LuciusBlack
"
" You can still just set the background variable and then set the color
" scheme. This will default to LuciusDark for 'dark' and LuciusLight for
" 'light'.
"
"
" Options:
"
" The presets available cover most of the options. You can, however, customize
" things by setting the following variables yourself:
"
" g:lucius_style  (default: 'dark')
"
" Set this option to either 'light' or 'dark' for your desired color scheme.
" It has the same effect as setting the background.
"
" g:lucius_contrast  (default: 'normal')
"
" This option determines the contrast to use for text/ui elements. It can be
" set to 'low', 'normal', or 'high'. At this time there is no 'high' for the
" light scheme.
"
" g:lucius_contrast_bg  (default: 'normal')
"
" Setting this option makes the background a higher contrast. Current settings
" are 'normal' and 'high'.
"
" g:lucius_use_bold (default: 1)
"
" Setting this will cause the color scheme to use bold fonts for some items.
"
" g:lucius_use_underline (default: 1)
"
" Setting this will cause the color scheme to use underlined fonts for some
" items.
"
" g:lucius_no_term_bg (default: 0)
"
" Setting this will cause the color scheme to not set a background color in
" the terminal (useful for transparency or terminals with different background
" colors).
"
" ============================================================================



" ============================================================================
" Options:
" ============================================================================

hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="new_licius"
"
"if exists("g:lucius_style")
"    let s:style = g:lucius_style
"else
"    let s:style = &background
"endif
"
"if exists("g:lucius_contrast")
"    let s:contrast = g:lucius_contrast
"else
"    let s:contrast = /"normal"
"endif
"
"if exists("g:lucius_contrast_bg")
"    let s:contrast_bg = g:lucius_contrast_bg
"else
"    let s:contrast_bg = /"normal"
"endif
"
"if exists("g:lucius_use_bold")
"    let s:use_bold = g:lucius_use_bold
"else
"    let s:use_bold = 1
"endif
"
"if exists("g:lucius_use_underline")
"    let s:use_underline = g:lucius_use_underline
"else
"    let s:use_underline = 1
"endif
"
"if exists("g:lucius_no_term_bg")
"    let s:no_term_bg = g:lucius_no_term_bg
"else
"    let s:no_term_bg = 0
"endif


" ============================================================================
" Color Map:
" ============================================================================

"deleted

" ============================================================================
" Functions:
" ============================================================================
"
"function! s:AddCterm(name)
"endfunction
"
"function! s:AddSpCterm(name)
"endfunction


" ============================================================================
" Text Groups:
" ============================================================================

" normal_items = [
"ColorColumn
"Comment
"Constant
"Cursor
"CursorColumn
"CursorIM
"CursorLine
"CursorLineNr
"DiffAdd
"DiffChange
"DiffDelete
"Directory
"Error
"ErrorMsg
"Identifier
"IncSearch
"LineNr
"MatchParen
"ModeMsg
"MoreMsg
"NonText
"Pmenu
"PmenuSbar
"PmenuSel
"ExtraWhiteSpace
"PmenuThumb
"PreProc
"Question
"Search
"SignColumn
"Special
"SpecialKey
"Statement
"StatusLineNC
"TabLine
"TabLineFill
"Todo
"Type
"VertSplit
"Visual
"WarningMsg
"WildMenu
"]

"bold_items=[
"DiffText
"FoldColumn
"Folded
"StatusLine
"TabLineSel
"Title
"]

"underline_items=[
"Underlined
"VisualNOS
"]

"undercurl_items=[
"SpellBad
"SpellCap
"SpellLocal
"SpellRare
"]


" ============================================================================
" Color Definitions:
" ============================================================================

" ----------------------------------------------------------------------------
" 'Normal' Colors:
" ----------------------------------------------------------------------------

hi clear Normal
hi Normal gui=none cterm=none term=none

hi Normal       guifg=#444444     ctermfg=238

hi Normal       guibg=#ffffff     ctermbg=231



" ----------------------------------------------------------------------------
" Extra setup
" ----------------------------------------------------------------------------

set background=light

" Clear default settings
"for s:item in s:normal_items + s:bold_items + s:underline_items + s:undercurl_items
"    exec \"hi \" . s:item . \" guifg=NONE guibg=NONE gui=none\"
"                \ . \" ctermfg=NONE ctermbg=NONE cterm=none term=none\"
"endfor

let g:colors_name="lucius"


" ----------------------------------------------------------------------------
" Text Markup:
" ----------------------------------------------------------------------------

hi ModeMsg      guifg=fg     ctermfg=fg
hi Question     guifg=fg     ctermfg=fg
hi NonText      guifg=#afafd7     ctermfg=146
hi SpecialKey   guifg=#afd7af     ctermfg=151
hi Comment      guifg=#808080     ctermfg=244
hi Constant     guifg=#af5f00     ctermfg=130     gui=bold     cterm=bold      term=none
hi Directory    guifg=#00875f     ctermfg=29
hi Identifier   guifg=#008700     ctermfg=28      gui=bold     cterm=bold      term=none
hi PreProc      guifg=#008787     ctermfg=30      gui=bold     cterm=bold      term=none
hi Special      guifg=#870087     ctermfg=90      gui=bold     cterm=bold      term=none
hi Statement    guifg=#005faf     ctermfg=25      gui=bold     cterm=bold      term=none
hi Title        guifg=#005faf     ctermfg=25
hi Type         guifg=#005f87     ctermfg=24      gui=bold     cterm=bold      term=none

" ----------------------------------------------------------------------------
" Highlighting:
" ----------------------------------------------------------------------------

hi Cursor       guifg=bg     ctermfg=bg
hi CursorColumn guifg=NONE     ctermfg=NONE
hi CursorIM     guifg=bg     ctermfg=bg
hi CursorLine   guifg=NONE   gui=NONE     ctermfg=NONE    cterm=NONE
hi Visual       guifg=NONE     ctermfg=NONE
hi VisualNOS    guifg=fg        guibg=NONE     ctermfg=fg     ctermbg=NONE
hi CursorColumn                 guibg=#dadada     ctermbg=253
hi CursorLine                   guibg=#dadada     ctermbg=253
hi IncSearch    guifg=fg        guibg=#5fd7d7     ctermfg=fg     ctermbg=80
hi MatchParen   guifg=NONE      guibg=#5fd7d7     ctermfg=NONE     ctermbg=80
hi Search       guifg=fg        guibg=#ffaf00     ctermfg=fg     ctermbg=214
hi Visual                       guibg=#afd7ff     ctermbg=153
hi Cursor                       guibg=#5f87af     ctermbg=67
hi CursorIM                     guibg=#5f87af     ctermbg=67
hi Error        guifg=#af0000   guibg=#d7afaf     ctermfg=124     ctermbg=181
hi Todo         guifg=#875f00   guibg=#ffffaf     ctermfg=94     ctermbg=229

" ----------------------------------------------------------------------------
" Messages:
" ----------------------------------------------------------------------------

hi ModeMsg      guifg=fg     ctermfg=fg
hi Question     guifg=fg     ctermfg=fg
"hi ErrorMsg     guifg=#af0000     ctermfg=124
hi ErrorMsg        guifg=#af0000   guibg=#d7afaf     ctermfg=124     ctermbg=181
hi MoreMsg      guifg=#005fd7     ctermfg=26
hi WarningMsg   guifg=#af5f00     ctermfg=130

" ----------------------------------------------------------------------------
" UI:
" ----------------------------------------------------------------------------

hi ColorColumn      guifg=NONE     ctermfg=NONE
hi ExtraWhitespace  guifg=NONE     ctermfg=NONE
hi Pmenu            guifg=bg     ctermfg=bg
hi PmenuSel         guifg=fg     ctermfg=fg
hi PmenuThumb       guifg=fg     ctermfg=fg
hi StatusLine       guifg=bg     ctermfg=bg
hi TabLine          guifg=bg     ctermfg=bg
hi TabLineSel       guifg=fg     ctermfg=fg
hi WildMenu         guifg=fg     ctermfg=fg
hi ColorColumn                  guibg=#e4e4e4     ctermbg=254
hi ExtraWhitespace              guibg=#afd7af     ctermbg=151
hi CursorLineNr guifg=#9e9e9e   guibg=#dadada     ctermfg=247     ctermbg=253
hi FoldColumn                   guibg=#bcbcbc     ctermbg=250
hi Folded                       guibg=#bcbcbc     ctermbg=250
hi LineNr       guifg=#9e9e9e   guibg=#dadada     ctermfg=247     ctermbg=253
hi PmenuSel                     guibg=#afd7ff     ctermbg=153
hi SignColumn                   guibg=#d0d0d0     ctermbg=252
hi StatusLineNC guifg=#e4e4e4     ctermfg=254
hi TabLineFill  guifg=#b2b2b2     ctermfg=249
hi VertSplit    guifg=#e4e4e4     ctermfg=254
hi WildMenu                     guibg=#afd7ff     ctermbg=153
hi FoldColumn   guifg=#626262     ctermfg=241
hi Folded       guifg=#626262     ctermfg=241
hi Pmenu                        guibg=#808080     ctermbg=244
hi PmenuSbar    guifg=#808080   guibg=#444444     ctermfg=244     ctermbg=238
hi PmenuThumb                   guibg=#9e9e9e     ctermbg=247
hi SignColumn   guifg=#626262     ctermfg=241
hi StatusLine                   guibg=#808080     ctermbg=244
hi StatusLineNC                 guibg=#808080     ctermbg=244
hi TabLine                      guibg=#808080     ctermbg=244
hi TabLineFill                  guibg=#808080     ctermbg=244
hi TabLineSel                   guibg=#afd7ff     ctermbg=153
hi VertSplit                    guibg=#808080     ctermbg=244

" ----------------------------------------------------------------------------
" Diff:
" ----------------------------------------------------------------------------

hi DiffAdd      guifg=fg     ctermfg=fg
hi DiffChange   guifg=fg     ctermfg=fg
hi DiffDelete   guifg=fg     ctermfg=fg

hi DiffAdd                      guibg=#afd7af     ctermbg=151
hi DiffChange                   guibg=#d7d7af     ctermbg=187
hi DiffDelete                   guibg=#d7afaf     ctermbg=181
hi DiffText                     guibg=#d7d7af     ctermbg=187
hi DiffText     guifg=#d75f00     ctermfg=166


" ----------------------------------------------------------------------------
" Spelling:
" ----------------------------------------------------------------------------

hi SpellBad     guisp=#d70000 "ctermsp=160
hi SpellCap     guisp=#00afd7 "ctermsp=38
hi SpellLocal   guisp=#d7af00 "ctermsp=178
hi SpellRare    guisp=#5faf00 "ctermsp=70


" ----------------------------------------------------------------------------
" Miscellaneous:
" ----------------------------------------------------------------------------

hi Ignore       guifg=bg     ctermfg=bg
hi Underlined   guifg=fg     ctermfg=fg


" ============================================================================
" Text Emphasis:
" ============================================================================

hi DiffText      gui=bold    cterm=bold    term=none
hi FoldColumn    gui=bold    cterm=bold    term=none
hi Folded        gui=bold    cterm=bold    term=none
hi StatusLine    gui=bold    cterm=bold    term=none
hi TabLineSel    gui=bold    cterm=bold    term=none
hi Title         gui=bold    cterm=bold    term=none
"if s:use_bold == 1
"    for s:item in s:bold_items
"        exec /"hi /" . s:item . /" gui=bold cterm=bold term=none"
"    endfor
"endif

hi Underlined gui=underline cterm=underline term=none
hi VisualNOS gui=underline cterm=underline term=none

"if s:use_underline == 1
"    for s:item in s:underline_items
"        exec /"hi /" . s:item . /" gui=underline cterm=underline term=none/"
"    endfor
"    for s:item in s:undercurl_items
"        exec /"hi /" . s:item . /" cterm=underline/"
"    endfor
"endif

hi SpellBad gui=undercurl cterm=underline term=none
hi SpellCap gui=undercurl cterm=underline term=none
hi SpellLocal gui=undercurl cterm=underline term=none
hi SpellRare gui=undercurl cterm=underline term=none

"for s:item in s:undercurl_items
"    exec /"hi /" . s:item . /" gui=undercurl term=none/"
"endfor


" ============================================================================
" Cterm Colors:
" ============================================================================

"for s:item in s:normal_items + s:bold_items + s:underline_items
"    call s:AddCterm(s:item)
"endfor

"for s:item in s:undercurl_items
"    call s:AddSpCterm(s:item)
"endfor

"if s:no_term_bg == 1
"    hi Normal ctermbg=NONE
"endif


" ============================================================================
" Alternative Bold Definitions:
" ============================================================================

"alternative_bold_items=[
"Identifier
"PreProc
"Statement
"Special
"Constant
"Type
"]

"for s:item in s:alternative_bold_items
"    exec /"let s:temp_gui_fg = synIDattr(synIDtrans(hlID('" . s:item .
"                \ /"')), 'fg', 'gui')"
"    exec /"let s:temp_cterm_fg = synIDattr(synIDtrans(hlID('" . s:item .
"                \ /"')), 'fg', 'cterm')"
"    exec /"hi B" . s:item . /" guifg=" . s:temp_gui_fg . /" ctermfg=" .
"                \ s:temp_cterm_fg . /" gui=bold cterm=bold term=none"
"endfor

"i do it myself

" ============================================================================
" Plugin Specific Colors:
" ============================================================================

" Tagbar:
hi link TagbarAccessPublic Constant
hi link TagbarAccessProtected Type
hi link TagbarAccessPrivate PreProc

" Vimwiki:
hi link VimwikiHeader1 BIdentifier
hi link VimwikiHeader2 BPreProc
hi link VimwikiHeader3 BStatement
hi link VimwikiHeader4 BSpecial
hi link VimwikiHeader5 BConstant
hi link VimwikiHeader6 BType


" ============================================================================
" Preset Commands:
" ============================================================================

"function! SetLucius(style, contrast, contrast_bg)
"    let g:lucius_style = a:style
"    let g:lucius_contrast = a:contrast
"    let g:lucius_contrast_bg = a:contrast_bg
"endfunction
"
"command! LuciusLight call SetLucius("light","normal","normal")
"            \ | colorscheme lucius
"command! LuciusLightLowContrast call SetLucius("light","low","normal")
"            \ | colorscheme lucius
"command! LuciusLightHighContrast call SetLucius("light","high","normal")
"            \ | colorscheme lucius
"
"command! LuciusWhite call SetLucius("light","normal","high")
"            \ | colorscheme lucius
"command! LuciusWhiteLowContrast call SetLucius("light","low","high")
"            \ | colorscheme lucius
"command! LuciusWhiteHighContrast call SetLucius("light","high","high")
"            \ | colorscheme lucius
"
"command! LuciusDark call SetLucius("dark","normal","normal")
"            \ | colorscheme lucius
"command! LuciusDarkLowContrast call SetLucius("dark","low","normal")
"            \ | colorscheme lucius
"command! LuciusDarkHighContrast call SetLucius("dark","high","normal")
"            \ | colorscheme lucius
"
"command! LuciusBlack call SetLucius("dark","normal","high")
"            \ | colorscheme lucius
"command! LuciusBlackLowContrast call SetLucius("dark","low","high")
"            \ | colorscheme lucius
"command! LuciusBlackHighContrast call SetLucius("dark","high","high")
"            \ | colorscheme lucius
"
" vim: tw=78

