" Basic Settings
set nocompatible
filetype indent plugin on
set shell=/bin/fish
syntax on
set encoding=utf-8
set hidden
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
"set cursorcolumn
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=1
set number
set relativenumber
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
set conceallevel=2
set splitbelow
set wrap
set breakindent
set linebreak
set sidescroll=1
set whichwrap+=h,l
set fillchars+=vert:│


" Keyboard
let mapleader=" "
let maplocalleader = " "

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
if has("nvim")
    au TermOpen * tnoremap <Esc> <c-\><c-n>
    au FileType fzf tunmap <Esc>
endif
nnoremap <C-W>h <C-W>s

nnoremap <A-h> :tabprevious<CR>                                                                            
nnoremap <A-l> :tabnext<CR>
nnoremap <A-j> 5j
nnoremap <A-k> 5k

vnoremap <C-X> "+c
vnoremap <C-C> "+y
vnoremap <C-V> "+p

noremap <Leader>tN :tabnew<CR>
noremap <Leader>tc :tabclose<CR>
noremap <Leader>tm :tabmove<CR>
noremap <Leader>tn :tabnext<CR>
noremap <Leader>tp :tabprevious<CR>


" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'dag/vim-fish'
Plug 'edkolev/promptline.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
"Plug 'edkolev/tmuxline.vim'

Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

Plug 'ap/vim-css-color'
Plug 'ehamberg/vim-cute-python', {'branch': 'moresymbols'}
Plug 'chrisbra/unicode.vim'
Plug 'ryanoasis/vim-devicons'

Plug 'scrooloose/nerdcommenter'
"Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'skywind3000/asyncrun.vim'
"Plug 'yggdroot/indentline'

Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

"Plug 'plasticboy/vim-markdown'
"Plug 'gabrielelana/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'dhruvasagar/vim-table-mode'
Plug 'dkarter/bullets.vim'

Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
"Plug 'Konfekt/FastFold'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'chiel92/vim-autoformat'
Plug 'w0rp/ale'

Plug 'morhetz/gruvbox'
"Plug 'dylanaraps/wal.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Ron89/thesaurus_query.vim'
Plug 'rhysd/vim-grammarous'

Plug 'vim-scripts/Arduino-syntax-file'
call plug#end()


" General
"inoremap <Down> <Nop>
"inoremap <Left> <Nop>
"inoremap <Right> <Nop>
"inoremap <Up> <Nop>
"nnoremap <Down> <Nop>
"nnoremap <Left> <Nop>
"nnoremap <Right> <Nop>
"nnoremap <Up> <Nop>
"vnoremap <Down> <Nop>
"vnoremap <Left> <Nop>
"vnoremap <Right> <Nop>
"vnoremap <Up> <Nop>

let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
let g:asyncrun_open = 8
autocmd FileType md nnoremap <f5> :MarkdownPreview<cr>
autocmd FileType python nnoremap <f5> :AsyncRun python %<cr>
autocmd FileType tex nnoremap <f5> :VimtexCompile<cr>
autocmd FileType bib command -nargs=1 Doi2bib read !doi2bib <args>
"autocmd Filetype arduino nnoremap <f5> :AsyncRun -S cd ..; sudo make upload; sudo platformio device monitor;<cr>


" Startify
let g:startify_bookmarks= [{'c': '~/.config/nvim/init.vim'}, {'i': '~/install.md'}, {'e': '~/.local/share/konsole/Default.profile'}, {'t': '~/.tmux.conf'}]
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
let g:startify_custom_header = [
            \'                    ▒                    ',
            \'    ██████████████▒▒▒▒▒ ██████████████   ',
            \'    ██████████████▒▒▒▒▒▒██████████████   ',
            \'      ██████████▒▒▒▒▒▒▒▒▒▒██████████     ',
            \'      ██████████▒▒▒▒▒▒▒▒██████████       ',
            \'      ██████████▒▒▒▒▒▒▒██████████        ',
            \'      ██████████▒▒▒▒▒██████████▒▒        ',
            \'      ██████████▒▒▒▒██████████▒▒▒▒▒      ',
            \'    ▒▒██████████▒▒██████████▒▒▒▒▒▒▒▒▒    ',
            \'  ▒▒▒▒██████████▒█████████▒▒▒▒▒▒▒▒▒▒▒▒▒  ',
            \'    ▒▒████████████████▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒    ',
            \'      ████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒      ',
            \'      ██████████████▒▓▓▓▒▓▓▓▓▓▓▓▓▓▓      ',
            \'      ████████████▒▒▒▓▓▒▒▒▓▓▒▒▓▓  ▓▓     ',
            \'      ██████████▒▒▒▒▓▓▒▒▒▓▓▒▒▓▓  ▓▓      ',
            \'      ████████▒▒▒▒▒▒▓▓▓▒▒▓▓▓ ▓▓▓ ▓▓▓     ',
            \'      ██████    ▒▒▒▒▒▒▒▒▒                ',
            \'                  ▒▒▒▒▒                  ',
            \'                    ▒                    '
            \]


" LaTeX
let g:vimtex_latexmk_progname = 'nvr'
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_fold_manual=1
let g:vimtex_quickfix_ignore_all_warnings = 0
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


" Markdown
let g:mkdp_page_title = '${name}'
let g:mkdx#settings = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }
autocmd FileType org,markdown :TableModeToggle


" YCM
let g:ycm_autoclose_preview_window_after_completion = 1
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

let g:ycm_python_binary_path = 'python3'
let g:ycm_semantic_triggers.python = ['re!(import\s+|from\s+(\w+\s+(import\s+(\w+,\s+)*)?)?)'] 


" UltiSnips & ALE
let g:UltiSnipsExpandTrigger = "<c-space>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:ale_set_balloons = 1
let g:ale_hover_to_preview =1
let g:ale_fixers = {'tex': ['latexindent'], 'python':['autopep8']}
 let g:ale_set_highlights=0


" Search and Navigation
nnoremap <leader>nf :RangerNewTab<CR>
nnoremap <c-p> :Files<cr>

let g:ackprg = 'ag --nogroup --column'
cnoreabbrev ag Ack


" Language and Writing
set spell
set spelllang=de,en_gb
inoremap <c-f> <c-g>u<Esc>[s1z=`]a<c-g>u
nnoremap <c-f> [s1z=<c-o>

let g:tq_language=['en', 'de']
let g:tq_map_keys=0
nnoremap <unique><silent> <Leader>ct :ThesaurusQueryReplaceCurrentWord<CR>
vnoremap <unique><silent> <Leader>ct "ky:ThesaurusQueryReplace <C-r>k<CR>
nnoremap <silent> <LocalLeader>ct :ThesaurusQueryReplaceCurrentWord<CR>
vnoremap <silent> <LocalLeader>ct "ky:ThesaurusQueryReplace <C-r>k<CR>

autocmd BufEnter /usr/share/nvim/runtime/doc/*.txt set nospell
autocmd TermOpen * set nospell


" Appearance
"color wal
colo gruvbox
set bg=dark
"let g:gruvbox_contrast_dark = 'soft'
highlight Normal ctermbg=None
set guifont=Iosevka\ Nerd\ Font:s12
"let g:indentLine_char = '│'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 2

let g:airline_theme='base16_gruvbox_dark_hard'
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

if !filereadable(".promptline.sh")
    autocmd VimEnter * PromptlineSnapshot! ~/.promptline.sh airline
endif
"if !filereadable(".tmuxline.conf")
    "autocmd VimEnter * TmuxlineSnapshot! ~/.tmuxline.conf
"endif
