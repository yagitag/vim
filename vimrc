call pathogen#infect()


set nocp
filetype plugin on

"vundle settings
filetype off "required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
call vundle#end()
filetype plugin indent on

"colorscheme settings
set t_Co=256
syntax enable
colorscheme new_lucius

"ultisnips settings
let g:UltiSnipsExpandTrigger="<C-j>"

"syntastic settings
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': [] }

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

ca dfn YcmCompleter GoToDefinition
ca dcl YcmCompleter GoToDeclaration
nnoremap <C-f> :YcmCompleter GoTo<CR>

set colorcolumn=80
