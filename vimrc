call pathogen#infect()


set nocp
filetype plugin on

"vundle settings
filetype off "required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
filetype plugin indent on

"colorscheme settings
set t_Co=256
syntax enable
colorscheme lucius
LuciusWhite

"ultisnips settings
let g:UltiSnipsExpandTrigger="<C-j>"

"syntastic settings
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"let g:pymode_lint_write=0

set keymap=russian-jcukenwin " подключение встроенной русской раскладки
set iminsert=0 " русская расскладка по умолчанию
set imsearch=0 " русская расскладка при поиске по умолчанию 

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
