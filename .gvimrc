set background=light

set guifont=Source\ Code\ Pro\ 12

" Configura a GUI no GVIM
set guioptions=aem
set guioptions-=T

" Sem avisos sonoros, apenas 'piscantes' na tela
set visualbell
set noerrorbells

set popt+=syntax:y " Syntax when printing
set showcmd " show the command being typed
set showmode " show command mode

set ruler " Always show current positions along the bottom
set cmdheight=1 " the command bar is 1 high

set lazyredraw " do not redraw while running macros (much faster) (LazyRedraw)

set whichwrap+=<,>,[,],h,l " backspace and cursor keys wrap to
set report=0 " tell us when anything is changed via :...

set ttyfast

