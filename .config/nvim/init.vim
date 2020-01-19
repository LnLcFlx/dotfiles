" Basic Settings
set nocompatible
filetype indent plugin on

syntax on
set encoding=utf-8
set hidden
"set clipboard=unnamedplus
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set cursorline
set cursorcolumn
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=1
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
set conceallevel=2

set wrap
set breakindent
set linebreak
set sidescroll=1
"set whichwrap+=h,l
set fillchars+=vert:│


" Keyboard
let mapleader=" "
let maplocalleader = " "

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
tnoremap <Esc> <C-\><C-n>
nnoremap <C-W>h <C-W>s

nnoremap <A-h> :tabprevious<CR>                                                                            
nnoremap <A-l> :tabnext<CR>
nnoremap <A-j> 5j
nnoremap <A-k> 5k

vnoremap <C-X> "+c
vnoremap <C-C> "+y
vnoremap <C-V> "+p


" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

Plug 'ehamberg/vim-cute-python', {'branch': 'moresymbols'}
Plug 'scrooloose/nerdcommenter'
Plug 'rbgrouleff/bclose.vim' " dep for ranger.vim
Plug 'francoiscabrol/ranger.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'majutsushi/tagbar'

Plug 'chrisbra/unicode.vim'
Plug 'ryanoasis/vim-devicons'
"Plug 'yggdroot/indentline'
"Plug 'godlygeek/tabular'
"
"Plug 'plasticboy/vim-markdown'
Plug 'gabrielelana/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'

Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'edkolev/tmuxline.vim'
Plug 'edkolev/promptline.vim'

Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

Plug 'Valloric/YouCompleteMe'
"Plug 'Konfekt/FastFold'
Plug 'davidhalter/jedi-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'chiel92/vim-autoformat'
Plug 'w0rp/ale'
Plug 'mhinz/vim-startify'

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Ron89/thesaurus_query.vim'
Plug 'rhysd/vim-grammarous'
call plug#end()


let g:asyncrun_open = 8


" Startify
let g:startify_bookmarks= [{'c': '~/.config/nvim/init.vim'}, {'s': '~/setup.sh'}] ", {'t': '~/.tmux.conf'}]
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
let g:startify_custom_header = [
            \'                    .                    ',
            \'    ##############..... ##############   ',
            \'    ##############......##############   ',
            \'      ##########..........##########     ',
            \'      ##########........##########       ',
            \'      ##########.......##########        ',
            \'      ##########.....##########..        ',
            \'      ##########....##########.....      ',
            \'    ..##########..##########.........    ',
            \'  ....##########.#########.............  ',
            \'    ..################JJJ............    ',
            \'      ################.............      ',
            \'      ##############.JJJ.JJJJJJJJJJ      ',
            \'      ############...JJ...JJ..JJ  JJ     ',
            \'      ##########....JJ...JJ..JJ  JJ      ',
            \'      ########......JJJ..JJJ JJJ JJJ     ',
            \'      ######    .........                ',
            \'                  .....                  ',
            \'                    .                    '
            \]


" LaTeX
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_fold_manual=1
let g:vimtex_quickfix_open_on_warning = 0

let g:formatdef_latexindent = '"latexindent"'
let g:formatters_tex = ['latexindent']

let g:tex_flavor='latex'
let g:tex_indent_brace=1
let g:tex_indent_items=1
let g:tex_items='\\bibitem\|\\item'
let g:tex_itemize_env='itemize\|description\|enumerate\|thebibliography'
let g:tex_noindent_env='document\|verbatim\|comment\|lstlisting'
let g:tex_indent_ifelsefi = 1
let g:tex_indent_and=1
let g:tex_conceal="abdgm"

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
let g:ycm_semantic_triggers.tex = [
            \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
            \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
            \ 're!\\hyperref\[[^]]*',
            \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
            \ 're!\\(include(only)?|input){[^}]*',
            \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
            \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
            \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
            \ ]


" Markdown
let vim_markdown_preview_hotkey='<F5>'
let g:vim_markdown_folding_disabled = 1
let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }

let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack


" Autocompletion and Snippets and Autoformat
let g:ycm_autoclose_preview_window_after_completion = 1

let g:UltiSnipsExpandTrigger = "<c-space>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:ale_set_balloons = 1

let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#completions_enabled = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"
let g:jedi#goto_assignments_command = "<leader>pa"
let g:jedi#goto_definitions_command = "<leader>pd"
let g:jedi#documentation_command = "<leader>pk"
let g:jedi#usages_command = "<leader>pu"
let g:jedi#rename_command = "<leader>pr"


" Search and Navigation
nnoremap <leader>nf :RangerNewTab<CR>


" Language and Writing
setlocal spell
set spelllang=de,en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

let g:tq_language=['en', 'de']
let g:tq_map_keys=0
nnoremap <unique><silent> <Leader>ct :ThesaurusQueryReplaceCurrentWord<CR>
vnoremap <unique><silent> <Leader>ct "ky:ThesaurusQueryReplace <C-r>k<CR>
nnoremap <silent> <LocalLeader>ct :ThesaurusQueryReplaceCurrentWord<CR>
vnoremap <silent> <LocalLeader>ct "ky:ThesaurusQueryReplace <C-r>k<CR>


" Appearance
colo gruvbox
set bg=dark
let g:gruvbox_contrast = 'medium'
highlight Normal ctermbg=None
set guifont=DejaVuSansMono\ Nerd\ Font:s10
"let g:indentLine_char = '│'

let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

