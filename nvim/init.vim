set nocompatible
scriptencoding utf-8

ru languageclient.vim

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/vim-slumlord', { 'for': 'plantuml' }
Plug 'aklt/plantuml-syntax', { 'for': 'plantuml' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for': 'go' }
Plug 'zchee/deoplete-go', { 'do': 'make', 'for': 'go' }
call plug#end()

set number nospell
set list listchars=tab:»\ ,extends:›,precedes:‹,space:·,trail:·,eol:¬
set tabstop=4 shiftwidth=4
set completeopt-=preview
set hidden noautowrite

set clipboard=unnamed,unnamedplus
set background=dark
silent! color dracula

ru nerdtree.vim
ru airline.vim
ru deoplete.vim
