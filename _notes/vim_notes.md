---
permalink: /notes/vim
title: "Vim"
excerpt: "Vim and NeoVim tools and configurations."
toc_label: "Vim TOC"
header:
    teaser: /assets/images/vim_teaser_image.png
    overlay_color: "#616261"
---
## Tricks

### Format Json
```bash
%!python -m json.tool
```

### Using TODO and `grep`
- Use `TODO` in your code to mark tasks.
- Mark `TODO⚡` when complete.
- ```bash :grep TODO -r <path_to_file>```

### NeoVim Configuration File
<script src="https://gist.github.com/heathdrobertson/5c3610fca1ed0a8fe8bff9faf85e1b7b.js"></script>

### Using Terminal from within Vim
- To pause Vim and go to a terminal:
    - ```ctrl+z```
- To start Vim and return to where you left off:
    - ```fg```

### Vim Spelling
- To activate spelling in current buffer:
    - ```setlocal spell```
    - This can be set permenantly in .vimrc or init.vim 
    - ```[s and ]s``` move between highlighted missspleled words.
    - ```z=``` opens a list of possible word options.
    - ```:help spell``` for more commands.

### NeoVim ```init.vim```

```bash
" Neovim Plugins https://github.com/neovim/neovim/wiki/Related-projects#plugins
" vim-plug Plugin Manager - https://github.com/junegunn/vim-plug#usage
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - For Vim: ~.vim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" - Reload .vimrc and :PlugInstall to install plugins.
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" enhancemets
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'roxma/nvim-completion-manager'
Plug 'Chiel92/vim-autoformat'

" git
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter', {'type': 'opt'}
autocmd Filetype gitcommit setlocal spell textwidth=72

" python
Plug 'zchee/deoplete-jedi'
Plug 'shougo/deoplete.nvim'
Plug 'nvie/vim-flake8'
Plug 'sbdchd/neoformat'
Plug 'mindriot101/vim-yapf'
Plug 'davidhalter/jedi-vim'

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

" Javascript
Plug 'maksimr/vim-jsbeautify'

" Typescript
Plug 'leafgarland/typescript-vim'

" Nix Expressions
Plug 'LnL7/vim-nix'

" Ethereum Solidity
Plug 'tomlion/vim-solidity'

" Initialize plugin system
call plug#end()

let g:python3_host_prog = "/usr/bin/python3.6"


autocmd vimenter * NERDTree
" NerdTree Toggle
map <C-n> :NERDTreeToggle<CR>
:imap <C-j> <Esc>
" enable line numbers
let NERDTreeShowLineNumbers=1

" Typscript
set ff=unix
" Fullstack Python Vimrc File
" https://www.fullstackpython.com/vim.html
" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Use deoplete.
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Enable JsBeautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Vim-Airline
" List of themes here:
" $HOME/.local/share/nvim/plugged/vim-airline-themes/doc/airline-themes.txt
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = ''
let g:airline_right_sep = '«'
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" Set Spell
:nmap <F8> :setlocal spell spelllang=en_us<CR>
:nmap <F9> :set nospell<CR>
:nmap <F7> :echo 'Hi Heath'<CR>
```
