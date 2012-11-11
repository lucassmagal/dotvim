let $VIMHOME = $HOME."/.vim"

" Para detectar o tipo de arquivo aberto
filetype on

" Ativa plugins e identacoes especiais p/ cada arquivo
filetype plugin indent on

" Apresenta linhas verticais
set colorcolumn=72,79

" Ativa o syntax highlighting (obvio, ne?)
syntax on

" Realca a linha atual
set cursorline

" Inverso do startofline, movimentos no texto nao ignoram linhas vazias
set nostartofline

" Desativa a compatibilidade com o Vi
set nocompatible

" Permite mudar de buffer sem obrigar a salvar o atual
set hidden

" Nao quebra linhas
set nowrap

" Meio obvio este... exibe os numeros de linhas
set number

" Quantidade de espacos por indent
set shiftwidth=4

" Arredonda identacao para multiplos de shiftwidth
set shiftround

" Quantidade de espacos por TAB
set tabstop=4

" Para navegação, quantos espaços valem como TAB (util para backspace)
set softtabstop=4

" Mostra fechamentos equivalentes
set showmatch

" Quantidade de segundos que o fechamento sera realcado
set matchtime=5

" Para fazer buscas nao case-sensitive
set ignorecase

" Desativa ignorecase se a busca contem maiusculas
set smartcase

" Realca os termos encontrados da busca
set hlsearch

" Exibe os resultados enquanto faz a busca
set incsearch

" Quantidade de linhas do historico
set history=1000

" Quantidade de undos que podem ser feitos
set undolevels=200

" Arquivos que devem ser ignorados no completamento de arquivos e diretorios
set wildignore=*.swp,*.bak,*.pyc,*.class

" Titulo do terminal eh titulo do arquivo
set title

" Não cria arquivos de backup nem usa swaps
set nobackup
set noswapfile

" Command-line completion opera de forma melhorada (YAY!)
set wildmenu

" Configura o auto-complete... se há mais de um match, exibe uma lista
" e completa com o maior match
set wildmode=list:longest

" Comportamento do backspace
set backspace=indent,eol,start

" Repete indentação atual na nova linha
set autoindent

" Insere espaços ao inves de TABs
set expandtab

" Indentação inteligente a cada nova linha
set smartindent

" Um TAB insere espaços iguais a shiftwidth
set smarttab

" AINDA não tenho ideia do que seja =S
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" espaçamento entre linhas
set linespace=3

" muda o working directory a cada novo arquivo aberto
set autochdir

" Melhora o jeito que o auto-complete funciona
set completeopt=menu,longest,preview

" Folding... na verdade, eu colei estes configs
set foldenable " Turn on folding
set foldopen-=search " don't open folds when you search into them
set foldopen-=undo " don't open folds when you undo stuff
set foldmethod=indent " Fold on the marker
set foldlevel=1000 " Don't autofold anything
:highlight Folded guibg=grey guifg=blue " Customize color folded
:highlight FoldColumn guibg=darkgrey guifg=white" Customize fold column

" ATALHOS
" =======

" Mapeamento útil para diversos atalhos que farei
let mapleader=","

" alterna entre Paste Mode
set pastetoggle=<F2>

" Linha de comando aceita tanto ; quanto :
nnoremap ; :

" Atalho para salvar
map <leader>w :w<CR>

" Forçar salvamento sem sudo
cmap w!! w !sudo tee % >/dev/null

" Copiar/colar externo
map <leader>yy "+yy
map <leader>pp "+p

" POWERLINE
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'

" PATHOGEN
" ========

call pathogen#infect()
