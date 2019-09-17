set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

"-----------------------------------------------------------------------------
" Global Stuff
"-----------------------------------------------------------------------------

call plug#begin()
" General
Plug 'neomake/neomake'
Plug 'mileszs/ack.vim'
Plug 'salsifis/vim-transpose'
Plug 'chaoren/vim-wordmotion'
Plug 'tpope/vim-dispatch'
Plug 'henrik/vim-indexed-search'
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/VisIncr'
Plug 'elzr/vim-json'
Plug 'itchyny/vim-cursorword'
Plug 'andymass/vim-matchup'
Plug 'embear/vim-localvimrc'
Plug 'junegunn/goyo.vim'
Plug 'justinmk/vim-sneak'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-abolish'
Plug 'wincent/ferret'
Plug 'aserebryakov/vim-todo-lists'
Plug 'vim-scripts/editqf'
Plug 'vimwiki/vimwiki'
Plug 'cloudhead/neovim-fuzzy'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'bergercookie/vim-debugstring'

" GIT
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-conflicted'

" Ulti snips
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-repeat'
Plug 'svermeulen/vim-easyclip'

" Completion
Plug 'Shougo/echodoc.vim'

" For func argument completion
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'


" Alignment
Plug 'junegunn/vim-easy-align'
Plug 'nathanaelkane/vim-indent-guides'

" Icons
Plug 'ryanoasis/vim-devicons'

" Airline
Plug 'itchyny/lightline.vim'

"" JS Support
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'skywind3000/asyncrun.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'kristijanhusak/vim-js-file-import'

" ReasonML
Plug 'reasonml-editor/vim-reason-plus'

" Swift
Plug 'keith/swift.vim'

" Dart
Plug 'dart-lang/dart-vim-plugin'


Plug 'Shougo/unite.vim'
Plug 'sjl/gundo.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/gnupg.vim'
Plug 'vim-scripts/vimprj'
Plug 'whatyouhide/vim-gotham'
Plug 'xolox/vim-misc'
Plug 'jiangmiao/auto-pairs'
Plug 'shime/vim-livedown'
Plug 'guywald1/vim-prismo'
Plug 'mhinz/vim-grepper'
Plug 'brianclements/vim-popwindow'

" Haskell
Plug 'neovimhaskell/haskell-vim'

" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" System default for mappings is now the "," character
let mapleader = ","

" Match up 
let g:loaded_matchit = 1

" ----------------------------- JSX CONFIGURATION -----------------------------
let g:jsx_ext_required = 0

"  ---------------------------- PRISMO CONFIGURATION --------------------------- 
:nnoremap <leader>pr :Prismo<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" --------------------------- TABSTOPS ARE 2 SPACES ---------------------------
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Printing options
set printoptions=header:0,duplex:long,paper:letter
             
" set the search scan to wrap lines
set wrapscan

" I'm happy to type the case of things.  I tried the ignorecase, smartcase
" thing but it just wasn't working out for me
set noignorecase

" set the forward slash to be the slash of note.  Backslashes suck
set shellslash
if has("unix")
  set shell=zsh
endif

" Make command line two lines high
set ch=2

" set visual bell -- i hate that damned beeping
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make sure that unsaved buffers that are to be put in the background are 
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=ces$

" Add live preview for substitue
set inccommand=nosplit

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Don't update the display while executing macros
set lazyredraw

" Don't show the current command in the lower right corner.  In OSX, if this is
" set and lazyredraw is set then it's slow as molasses, so we unset this
set showcmd
set cmdheight=2

" Show the current mode
set showmode

" Switch on syntax highlighting.
syntax on

" Hide the mouse pointer while typing
set mousehide

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" set the gui options the way I like
set guioptions=acg

" Setting this below makes it sow that error messages don't disappear after one second on startup.
"set debug=msg

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
"      "," key and the "d" key.  If the "d" key isn't pressed before the
"      timeout expires, one of two things happens: The "," command is executed
"      if there is one (which there isn't) or the command aborts.
set timeoutlen=500

" Keep some stuff in the history
set history=100

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set foldmethod=syntax
set foldlevelstart=20

let javaScript_fold=1         " JavaScript"

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" Make the command-line completion better
set wildmenu

" Same as default except that I remove the 'u' option
set complete=.,w,b,t
set completeopt=menu,menuone,preview,noselect,noinsert

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Disable it... every time I hit the limit I unset this anyway. It's annoying
set textwidth=0

" get rid of the silly characters in separators
set fillchars = ""

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Add the unnamed register to the clipboard
set clipboard=unnamed

" Automatically read a file that has changed on disk
set autoread

set grepprg=grep\ -nH\ $*

" Trying out the line numbering thing... never liked it, but that doesn't mean
" I shouldn't give it another go :)
set number
set relativenumber

" Types of files to ignore when autocompleting things
set wildignore+=*.o,*.class,*.git,*.svn

" Various characters are "wider" than normal fixed width characters, but the
" default setting of ambiwidth (single) squeezes them into "normal" width, which
" sucks.  Setting it to double makes it awesome.
set ambiwidth=single

" OK, so I'm gonna remove the VIM safety net for a while and see if kicks my ass
set nobackup
set nowritebackup
set noswapfile

" dictionary for english words
" I don't actually use this much at all and it makes my life difficult in general
"set dictionary=$VIM/words.txt


" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<CR>
nmap <silent> ,cr :lcd <c-r>=FindCodeDirOrRoot()<cr><cr>
nmap <silent> ,md :!mkdir -p %:p:h<CR>
nnoremap <Leader>pwd :echo @%<CR>
nmap cp :let @+ = expand("%")<cr>
nnoremap U :redo<CR>
nnoremap <leader>cf :e %:h/

nnoremap ne :lnext<cr>

" Turn off that stupid highlight search
nmap <silent> <esc> :nohls<CR>

" Fast search and replace
nnoremap <Leader>s :%s/<C-r><C-w>/

" Generate JS Doc
let g:jsdoc_allow_input_prompt=1
nnoremap <Leader>dc :JsDoc<CR>

" set text wrapping toggles
nmap <silent> <c-/> <Plug>WimwikiIndex
nmap <silent> ,wW :windo set invwrap<cr>

" Maps to make handling windows a bit easier
noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>
noremap <silent> ,ss :vertical resize 50<CR>
noremap <silent> ,cj :wincmd j<CR>:close<CR>
noremap <silent> ,ck :wincmd k<CR>:close<CR>
noremap <silent> ,ch :wincmd h<CR>:close<CR>
noremap <silent> ,cl :wincmd l<CR>:close<CR>
noremap <silent> ,cc :close<CR>
noremap <silent> ,cw :cclose<CR>
noremap <silent> ,ml <C-W>L
noremap <silent> ,mk <C-W>K
noremap <silent> ,mh <C-W>H
noremap <silent> ,mj <C-W>J
noremap <silent> <C-7> <C-W>>
noremap <silent> <C-8> <C-W>+
noremap <silent> <C-9> <C-W>+
noremap <silent> <C-0> <C-W>>

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" Edit the vimrc file
nmap <silent> ,ev :e ~/.config/nvim/init.vim<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>
nmap <silent> ,cs :e /Users/kamilbadyla/vim_cheatsheet<CR>
nmap <silent> ,es :e ~/.vim/snippets/javascript.snip<CR>

" Add a GUID to the current line
imap <C-J>d <C-r>=substitute(system("uuidgen"), '.$', '', 'g')<CR>

" Underline the current line with '='
nmap <silent> ,u= :t.\|s/./=/g\|:nohls<cr>
nmap <silent> ,u- :t.\|s/./-/g\|:nohls<cr>
nmap <silent> ,u~ :t.\|s/./\\~/g\|:nohls<cr>

" Shrink the current window to fit the number of lines in the buffer.  Useful
" for those buffers that are only a few lines
nmap <silent> ,sw :execute ":resize " . line('$')<cr>

" Use the bufkill plugin to eliminate a buffer but keep the window layout
nmap ,bd :BD<cr>
nmap ,bw :BW<cr>

" Grepping
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
nnoremap <leader>gg :Rg<cr>
nnoremap <leader>gf :Ack!<Space>

" Alright... let's try this out
imap jj <esc>
cmap jj <esc>

" I like jj - Let's try something else fun
imap ,fn <c-r>=expand('%:t:r')<cr>

" Clear the text using a motion / text object and then move the character to the
" next word
nmap <silent> ,C :set opfunc=ClearText<CR>g@
vmap <silent> ,C :<C-U>call ClearText(visual(), 1)<CR>

" Digraphs
" Alpha
"inoremap <c-l><c-a> <c-k>a*
"" Beta
"inoremap <c-l><c-b> <c-k>b*
"" Gamma
"inoremap <c-l><c-g> <c-k>g*
"" Delta
"inoremap <c-l><c-d> <c-k>d*
"" Epslion
"inoremap <c-l><c-e> <c-k>e*
"" Lambda
"inoremap <c-l><c-l> <c-k>l*
"" Eta
"inoremap <c-l><c-y> <c-k>y*
"" Theta
"inoremap <c-l><c-h> <c-k>h*
"" Mu
"inoremap <c-l><c-m> <c-k>m*
"" Rho
"inoremap <c-l><c-r> <c-k>r*
"" Pi
"inoremap <c-l><c-p> <c-k>p*
"" Phi
"inoremap <c-l><c-f> <c-k>f*
" Composition
inoremap <c-l><c-f> <c-k>Ob
inoremap <c-l><c-a> <c-k>AN
inoremap <c-l><c-o> <c-k>OR


function! ClearText(type, ...)
	let sel_save = &selection
	let &selection = "inclusive"
	let reg_save = @@
	if a:0 " Invoked from Visual mode, use '< and '> marks
		silent exe "normal! '<" . a:type . "'>r w"
	elseif a:type == 'line'
		silent exe "normal! '[V']r w"
	elseif a:type == 'line'
		silent exe "normal! '[V']r w"
    elseif a:type == 'block'
      silent exe "normal! `[\<C-V>`]r w"
    else
      silent exe "normal! `[v`]r w"
    endif
    let &selection = sel_save
    let @@ = reg_save
endfunction

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" Highlight the current line and column
" Don't do this - It makes window redraws painfully slow
set nocursorline
set nocursorcolumn

"-----------------------------------------------------------------------------
" Indent Guides
"-----------------------------------------------------------------------------
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_auto_colors = 0

"-----------------------------------------------------------------------------
" Fugitive
"-----------------------------------------------------------------------------
" Thanks to Drew Neil
autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \  noremap <buffer> .. :edit %:h<cr> |
  \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>ga :Gcommit --amend<CR>
nnoremap <leader>gt :Gcommit -v -q %<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gp :execute ':Gpush -v origin ' . fugitive#head()<cr> 
nnoremap <leader>gpf :execute ':Gpush -f -v origin ' . fugitive#head()<cr> 

nnoremap <leader>ef :Explore<CR>
nnoremap <leader>df :call delete(expand('%')) <cr> 

"-----------------------------------------------------------------------------
" GPG Stuff
"-----------------------------------------------------------------------------
if has("mac")
  let g:GPGExecutable = "gpg2"
  let g:GPGUseAgent = 0
endif

"-----------------------------------------------------------------------------
" FuzzyFinder Settings
"-----------------------------------------------------------------------------
let g:fuf_splitPathMatching = 1
let g:fuf_maxMenuWidth = 110
let g:fuf_timeFormat = ''
nmap <silent> ,fv :FufFile ~/.vim/<cr>
nmap <silent> ,fc :FufMruCmd<cr>
nmap <silent> ,fm :FufMruFile<cr>

let g:CommandTMatchWindowAtTop = 1
let g:make_scala_fuf_mappings = 0

"-----------------------------------------------------------------------------
" CtrlP Settings
"-----------------------------------------------------------------------------
function! LaunchForThisGitProject(cmd)
  let dirs = split(expand('%:p:h'), '/')
  let target = '/'
  while len(dirs) != 0
    let d = '/' . join(dirs, '/')
    if isdirectory(d . '/.git')
      let target = d
      break
    else
      let dirs = dirs[:-2]
    endif
  endwhile
  if target == '/'
    echoerr "Project directory resolved to '/'"
  else
    :echom ":" . a:cmd . " " . target
    execute ":" . a:cmd . " " . target
  endif
endfunction

"-----------------------------------------------------------------------------
" Gundo Settings
"-----------------------------------------------------------------------------
nmap <c-F5> :GundoToggle<cr>
"-----------------------------------------------------------------------------
" Fix constant spelling mistakes
"-----------------------------------------------------------------------------

iab Acheive    Achieve
iab acheive    achieve
iab Alos       Also
iab alos       also
iab Aslo       Also
iab aslo       also
iab Becuase    Because
iab becuase    because
iab Bianries   Binaries
iab bianries   binaries
iab Bianry     Binary
iab bianry     binary
iab Charcter   Character
iab charcter   character
iab Charcters  Characters
iab charcters  characters
iab Exmaple    Example
iab exmaple    example
iab Exmaples   Examples
iab exmaples   examples
iab Fone       Phone
iab fone       phone
iab Lifecycle  Life-cycle
iab lifecycle  life-cycle
iab Lifecycles Life-cycles
iab lifecycles life-cycles
iab Seperate   Separate
iab seperate   separate
iab Seureth    Suereth
iab seureth    suereth
iab Shoudl     Should
iab shoudl     should
iab Taht       That
iab taht       that
iab Teh        The
iab teh        the

:iab <expr> dts strftime("%Y-%m-%d")

"-----------------------------------------------------------------------------
" Set up the window colors and size
"-----------------------------------------------------------------------------
syntax enable

"-----------------------------------------------------------------------------
" Local system overrides
"-----------------------------------------------------------------------------
if filereadable($HOME . "/.vimrc.local")
  execute "source " . $HOME . "/.vimrc.local"
endif

" Cycle through relativenumber + number, number (only), and no numbering.
function! Cycle_numbering() abort
  if exists('+relativenumber')
    execute {
          \ '00': 'set relativenumber   | set number',
          \ '01': 'set norelativenumber | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relative numbering, just toggle numbers on and off.
    set number!<CR>
  endif
endfunction
nnoremap <silent> <Leader>n :call Cycle_numbering()<CR>

" Easy-Align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"


"---------------------------------- DIFF ----------------------------------

if &diff
  map <leader>1 :diffget LOCAL<CR>
  map <leader>2 :diffget BASE<CR>
  map <leader>3 :diffget REMOTE<CR>
endif

let g:grepper               = {}
let g:grepper.tools         = ['git', 'rg']
" Faster searching
function! FindSymbolInProject()
  exec 'normal "ryiw'
  exec "GrepperGit -w '" . @r . "'"
endfunction
function! FindComponentUsageInProject()
  exec 'normal "ryiw'
  exec "GrepperGit -w '<" . @r . ""
endfunction
function! FindDefinitionInProject()
  exec 'normal "ryiw'
  exec "GrepperGit -w -e 'class " . @r . "' -e 'const " . @r . "' -e 'function " . @r . "'"
endfunction
nnoremap <Leader>js :call FindSymbolInProject()<CR>
nnoremap <Leader>ju :call FindComponentUsageInProject()<CR><CR>:cclose<CR>
nnoremap <Leader>jd :call FindDefinitionInProject()<CR><CR>:cclose<CR>

vmap <Leader>so y:Ack <C-R>"<CR>
nnoremap <Leader>mr gg/render(<CR>w

" Close temporary window
nnoremap <Leader>cw :PopWindow<CR>

" Easy clip
nmap M <Plug>MoveMotionEndOfLinePlug

" Word Motion
let g:wordmotion_prefix = ','

" echodoc
let g:echodoc#enable_at_startup=1

" Snippet
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
let g:deoplete#enable_at_startup = 1
imap <C-s>     <Plug>(neosnippet_expand_or_jump)
smap <C-s>     <Plug>(neosnippet_expand_or_jump)
xmap <C-t>     <Plug>(neosnippet_expand_target)

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
let g:neosnippet#scope_aliases = {}
let g:neosnippet#scope_aliases['javascript'] = 'html,javascript'
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/snippets/'

" Add marking overriden by easyclip
nnoremap sm m

" Exit terminal mode with escape
:tnoremap <Esc> <C-\><C-n>

"Fzf
nnoremap <leader>ff :GFiles<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fc :History:<CR>
nnoremap <leader>fl :BCommits<CR>

"markdown
let g:vim_markdown_folding_disabled = 1

"Open quickly alternate file
nnoremap <C-b> :b#<CR>

" Sneak
nmap s <Plug>Sneak_s
nmap S <Plug>Sneak_S
omap z <Plug>Sneak_s
omap Z <Plug>Sneak_S

" CloseTag
let g:closetag_filetypes = 'javascript.jsx'
let g:closetag_close_shortcut = ',>'

" GIT conflicts
nnoremap <leader>nc :GitNextConflict<cr>

" Color
colorscheme flattened_dark

 " Use J and K to move text blocks in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" :W to save file and create dir if needed
function! WriteCreatingDirs()
    execute ':silent !mkdir -p %:h'
    write
endfunction
command! W call WriteCreatingDirs()

" NeoMake + JS + Flow
function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

let &makeprg=g:flow_path.' --json 2> /dev/null | flow-vim-quickfix'
let &errorformat='%E%f:%l:%c\,%n:\ %m'

nnoremap <leader>mm :Neomake!<cr>
"let g:neomake_open_list = 1
set t_ZH=^[[3m 
set t_ZR=^[[23m

let g:sneak#label = 1

"Visual select and press c-r to search and replace
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

