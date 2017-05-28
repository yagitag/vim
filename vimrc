set nocp
filetype plugin on

"vundle settings
filetype off "required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'lyokha/vim-xkbswitch'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_register_as_syntastic_checker = 0

"ultisnips settings
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsEditSplit="vertical"
filetype plugin indent on

"xkbswitch settings
"depends on https://github.com/ierton/xkb-switch. lib path pass through XkbSwitchLib var
let g:XkbSwitchEnabled = 1
let g:XkbSwitchIMappingsTrData = $HOME.'/.vim/bundle/vim-xkbswitch/xkbswitch.tr'
let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
let g:XkbSwitchAssistNKeymap = 1    " for commands r and f
let g:XkbSwitchAssistSKeymap = 1    " for search lines

"colorscheme settings
set t_Co=256
syntax enable
colorscheme lucius
LuciusDark

set keymap=russian-jcukenwin " подключение встроенной русской раскладки
set iminsert=0
set imsearch=0

set number " нумерация
set cursorline "подсветка редактируемой строчки
set ai " автоматические отступы
set shiftwidth=2 " ширина авт. отс.
set ts=2 " ширина табуляции
set et " автозамена табов
set wrap " перенос длинныъ строк
set hls " подсветка результатов поиска
set ignorecase " Включить игнорирование регистра при поиске
set linebreak " перенос по словам
set showcmd " показывать выполняемую команду
match ExtraWhitespace /\s\+$/ " показывать пробелы в конце строки

au BufNewFile,BufRead *.cu set ft=cpp.cu

ca dfn YcmCompleter GoToDefinition
ca dcl YcmCompleter GoToDeclaration
nnoremap <C-f> :YcmCompleter GoTo<CR>

set colorcolumn=80
