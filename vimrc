" ===
" === Plugin Config
" ===
call plug#begin('~/.vim/plugged')
" Beautify
Plug 'liuchengxu/space-vim-theme'
Plug 'mg979/vim-xtabline'
Plug 'hardcoreplayers/spaceline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'bling/vim-bufferline'
Plug 'bagrat/vim-buffet'
Plug 'bpietravalle/vim-bolt'
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'
Plug 'mhinz/vim-startify', {'branch': 'center'}
Plug 'Yggdroot/indentLine',{ 'for': ['c', 'h', 'cpp', 'py', 'json', 'go', 'java', 'vim', 'hs', 'javascript', 'jsx'] }
Plug 'sheerun/vim-polyglot',{'for':['c', 'h', 'cpp', 'py', 'go', 'java', 'vim', 'json', 'hs', 'javascript', 'jsx']}

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'

" FE
Plug 'mattn/emmet-vim'
Plug 'tyru/open-browser.vim', {'on':['<Plug>(openbrowser-smart-search)', '<Plug>(openbrowser-open)']}

" Snipeets
Plug 'honza/vim-snippets'

" Go
Plug 'fatih/vim-go'

" Python
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }

" Debug
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python --enable-go --force-enable-node'}

" Edit
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/switch.vim'

" Autoformat
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/vim-easy-align', {'on':'<Plug>(EasyAlign)'}

" Taglist
Plug 'liuchengxu/vista.vim'

" File navigation
Plug 'junegunn/fzf', {'on':['Files', 'History', 'Colors', 'Rg', 'Marks'] }
Plug 'junegunn/fzf.vim', {'on':['Files', 'History', 'Colors', 'Rg', 'Marks']}
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'airblade/vim-rooter'

" Undo Tree
Plug 'mbbill/undotree'

" Other useful utilities
Plug 'lambdalisue/suda.vim'

" Other Dress vim
Plug 'itchyny/calendar.vim'

" CSharp
Plug 'OmniSharp/omnisharp-vim'
Plug 'ctrlpvim/ctrlp.vim' , { 'for': ['cs', 'vim-plug'] } " omnisharp-vim dependency

" Terminal
	Plug 'wincent/terminus'
call plug#end()


	source ~/.vim/_machine_specific.vim

	" ===
	" === Defualt Config
	" ===
	set hlg=cn
	set vb t_vb=
	set magic
	set confirm
	set nocompatible
	set scrolloff=5
	set nu
	set rnu
	set ignorecase
	set smartcase
	set lazyredraw
	set nowrap
	set cul
	set acd
	set noexpandtab
	set tabstop=2
	set shiftwidth=2
	set softtabstop=2
	set ai
	set list
	set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←
	set ttm=0
	set notimeout
	set viewoptions=cursor,folds,slash,unix
	set tw=0
	set inde=
	set foldmethod=indent
	set foldlevel=99
	set foldenable
	set formatoptions-=tc
	set splitbelow
	set splitright
	set noshowmode
	set hidden
	set termguicolors
	set showcmd
	set wildmenu
	set shortmess+=c
	set encoding=utf-8
	set fileencodings=utf-8,gbk,gb18030,gk2312
	language messages zh_CN.UTF-8
	set colorcolumn=80
	set updatetime=1000
	set virtualedit=block
	set hlsearch
	set incsearch
	set noruler
	set laststatus=2
	set display=lastline

	silent !mkdir -p ~/.vim/tmp/backup
	silent !mkdir -p ~/.vim/tmp/undo
	"silent !mkdir -p ~/.vim/tmp/sessions
	set backupdir=~/.vim/tmp/backup,.
	set directory=~/.vim/tmp/backup,.
	if has('persistent_undo')
	set undofile
	set undodir=~/.vim/tmp/undo,.
	endif

	let mapleader=" "

	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | e

	" ===
	" === Terminal Behaviors
	" ===
	let g:neoterm_autoscroll = 1
	tnoremap <C-N> <C-\><C-N>
	tnoremap <C-O> <C-\><C-N><C-O>
	let g:terminal_color_0  = '#000000'
	let g:terminal_color_1  = '#FF5555'
	let g:terminal_color_2  = '#50FA7B'
	let g:terminal_color_3  = '#F1FA8C'
	let g:terminal_color_4  = '#BD93F9'
	let g:terminal_color_5  = '#FF79C6'
	let g:terminal_color_6  = '#8BE9FD'
	let g:terminal_color_7  = '#BFBFBF'
	let g:terminal_color_8  = '#4D4D4D'
	let g:terminal_color_9  = '#FF6E67'
	let g:terminal_color_10 = '#5AF78E'
	let g:terminal_color_11 = '#F4F99D'
	let g:terminal_color_12 = '#CAA9FA'
	let g:terminal_color_13 = '#FF92D0'
	let g:terminal_color_14 = '#9AEDFE'


	" syntax
	syntax on
	filetype on
	filetype plugin on
	filetype indent on
	set background=dark
	colorscheme space_vim_theme

	" ===
	" === Nerdcomment
	" ===
	autocmd FileType apache setlocal commentstring=#\ %s

	" ===
	" === Font
	" ===
	let g:space_vim_italic=1
	let g:enable_bold_font=1
	let g:enable_italic_font=1

	" let g:coc_node_path = "~/.nvm/versions/node/v8.10.0/bin/node"
	let g:coc_disable_startup_warning = 1

	" ===
	" === Bullets.vim
	" ===
	let g:bullets_enabled_file_types = [
		\ 'markdown',
		\ 'text',
		\ 'gitcommit',
		\ 'scratch'
		\]

		" ===
		" === vim-instant-markdown
		" ===
		let g:instant_markdown_slow = 0
		let g:instant_markdown_autostart = 0
		let g:instant_markdown_autoscroll = 1

		" ===
		" === vim-table-mode
		" ===
		noremap <LEADER>tm :TableModeToggle<CR>
		let g:table_mode_cell_text_object_i_map = 'k<Bar>'

		" ===
		" === open-browser.vim
		" ===
	let g:netrw_nogx = 1
	nmap gx <Plug>(openbrowser-smart-search)
	vmap gx <Plug>(openbrowser-smart-search)
	nmap gu <Plug>(openbrowser-open)
vmap gu <Plug>(openbrowser-open)

	" ===
	" === Vim-buffet
	" ===
	nmap <leader>1 <Plug>BuffetSwitch(1)
	nmap <leader>2 <Plug>BuffetSwitch(2)
	nmap <leader>3 <Plug>BuffetSwitch(3)
	nmap <leader>4 <Plug>BuffetSwitch(4)
	nmap <leader>5 <Plug>BuffetSwitch(5)
	nmap <leader>6 <Plug>BuffetSwitch(6)
	nmap <leader>7 <Plug>BuffetSwitch(7)
	nmap <leader>8 <Plug>BuffetSwitch(8)
	nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

	" ===
	" === Vim-easy-aligon
	" ===
	xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

	" ===
	" === spaceline.vim
	" ===
	let g:spaceline_seperate_style= 'slant-cons'
	let g:spaceline_git_branch_icon= ' '

	" ===
	" === vim-rooter
	" ===
	let g:rooter_patterns = ['__vim_project_root', '.git/']
	let g:rooter_silent_chdir = 1

	" ===
	" === CTRLP (Dependency for omnisharp)
	" ===
	let g:ctrlp_map = ''
	let g:ctrlp_cmd = 'CtrlP'


	" ===
	" === Leaderf
	" ===
	let g:Lf_WindowPosition = 'popup'
	let g:Lf_PreviewInPopup = 1
	let g:Lf_PreviewCode = 1
	let g:Lf_ShowHidden = 1
	let g:Lf_ShowDevIcons = 1
	let g:Lf_CommandMap = {
		\   '<C-k>': ['<C-k>'],
		\   '<C-j>': ['<C-j>'],
		\   '<C-]>': ['<C-]>'],
		\   '<C-p>': ['<C-p>'],
		\}
	" https://github.com/Yggdroot/LeaderF/issues/53
		let g:Lf_UseVersionControlTool = 1
		let g:Lf_IgnoreCurrentBufferName = 1
		let g:Lf_UseMemoryCache = 0
		let g:Lf_UseCache = 0
		" https://github.com/Yggdroot/LeaderF/issues/328
		let g:Lf_DefaultExternalTool="Ag"
		let g:Lf_ShortcutF = '<c-p>'
		let g:Lf_WildIgnore = {
			\ 'dir': ['vendor', '.svn','.git','build','debug','release','reldbg','DS_Store','.exvim.*','jqwidgets', 'node_modules'],
			\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]','*.pb.h','*.pb.cc', '__vim_project_root']
				\}
		let g:Lf_DefaultMode='Regex'

			" ===
			" === FZF
			" ===
			nmap <Leader>ss :<C-u>SessionSave<CR>
			nmap <Leader>sl :<C-u>SessionLoad<CR>
			nmap <Leader>cn :<C-u>DashboardNewFile<CR>
			noremap <C-w> :Buffers<CR>
			nnoremap <silent> <Leader>fh :History<CR>
			nnoremap <silent> <Leader>ff :Files<CR>
			nnoremap <silent> <Leader>tc :Colors<CR>
			nnoremap <silent> <Leader>fa :Rg<CR>
			nnoremap <silent> <Leader>fb :Marks<CR>

			let g:fzf_preview_window = 'right:60%'
			let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

			function! s:list_buffers()
			redir => list
			silent ls
			redir END
			return split(list, "\n")
			endfunction

			function! s:delete_buffers(lines)
			execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
			endfunction

			command! BD call fzf#run(fzf#wrap({
						\ 'source': s:list_buffers(),
						\ 'sink*': { lines -> s:delete_buffers(lines) },
						\ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
						\ }))

			noremap <c-d> :BD<CR>

			let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }

		" ===
			" === Startify.vim
			" ===
			let s:header=[
			\'        ▄▄▄▄▄███████████████████▄▄▄▄▄     ',
			\'      ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄   ',
			\'     █▀████████▄             ▀▀████ ▀██▄  ',
			\'    █▄▄██████████████████▄▄▄         ▄██▀ ',
			\'     ▀█████████████████████████▄    ▄██▀  ',
			\'       ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀    ',
			\'         ▀███▄              ▀██████▀      ',
			\'           ▀██████▄        ▄████▀         ',
			\'              ▀█████▄▄▄▄▄▄▄███▀           ',
			\'                ▀████▀▀▀████▀             ',
			\'                  ▀███▄███▀               ',
			\'                     ▀█▀                  ',
			\'                                          ',
			\'               [  Dr.Stone  ]           ',
			\]
				let s:footer = [
				\ '   +-------------------------------------------+',
			\ '   |             Vim 8.2.1 ^_^                 |',
			\ '   |        Welcome to my vim config           |',
			\ '   |         Email：stone_fe@163.com           |',
			\ '   |           GitHub: SmithJoson              |',
			\ '   +-------------------------------------------+',
			\ ]
				function! s:center(lines) abort
				let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
				let centered_lines = map(copy(a:lines),
						\ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
				return centered_lines
				endfunction
				let g:startify_custom_header = s:center(s:header)
				let g:startify_custom_footer = s:center(s:footer)
				let g:startify_center="60"


				" ===
				" === IndentLine
				" ===
				let g:indentLine_enabled = 1
				let g:indentLine_char='→'
				let g:indentLine_fileTypeExclude = ['dashboard', 'defx', 'denite','startify','tagbar','vista_kind','vista','coc-explorer']
				let g:indentLine_concealcursor = 'niv'
				let g:indentLine_showFirstIndentLevel =1

				" ===
				" === vim-illuminate
				" ===
				let g:Illuminate_delay = 750
				hi illuminatedWord cterm=undercurl gui=undercurl

				" ===
				" === rainbow
				" ===
				let g:rainbow_active = 1

				" ===
				" === xtabline
				" ===
				let g:xtabline_settings = {}
		let g:xtabline_settings.enable_mappings = 0
			let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
			let g:xtabline_settings.enable_persistance = 0
			let g:xtabline_settings.last_open_first = 1
			noremap to :XTabCycleMode<CR>
			noremap \p :echo expand('%:p')<CR>

			" ===
			" === Undotree
			" ===
			noremap L :UndotreeToggle<CR>
			let g:undotree_DiffAutoOpen = 1
			let g:undotree_SetFocusWhenToggle = 1
			let g:undotree_ShortIndicators = 1
			let g:undotree_WindowLayout = 2
			let g:undotree_DiffpanelHeight = 8
			let g:undotree_SplitWidth = 24
			function g:Undotree_CustomMap()
			nmap <buffer> u <plug>UndotreeNextState
			nmap <buffer> e <plug>UndotreePreviousState
			nmap <buffer> U 5<plug>UndotreeNextState
			nmap <buffer> E 5<plug>UndotreePreviousState
			endfunc

			" ===
			" === vim-calendar
			" ===
			noremap \\ :Calendar -view=clock -position=here<CR>
			let g:calendar_google_calendar = 1
			let g:calendar_google_task = 1
			augroup calendar-mappings
			autocmd!
			" diamond cursor
			autocmd FileType calendar nmap <buffer> u <Plug>(calendar_up)
			autocmd FileType calendar nmap <buffer> n <Plug>(calendar_left)
			autocmd FileType calendar nmap <buffer> e <Plug>(calendar_down)
			autocmd FileType calendar nmap <buffer> i <Plug>(calendar_right)
			autocmd FileType calendar nmap <buffer> <c-u> <Plug>(calendar_move_up)
			autocmd FileType calendar nmap <buffer> <c-n> <Plug>(calendar_move_left)
			autocmd FileType calendar nmap <buffer> <c-e> <Plug>(calendar_move_down)
			autocmd FileType calendar nmap <buffer> <c-i> <Plug>(calendar_move_right)
			autocmd FileType calendar nmap <buffer> k <Plug>(calendar_start_insert)
			autocmd FileType calendar nmap <buffer> K <Plug>(calendar_start_insert_head)
			" unmap <C-n>, <C-p> for other plugins
			autocmd FileType calendar nunmap <buffer> <C-n>
			autocmd FileType calendar nunmap <buffer> <C-p>
			augroup END

			" ===
			" === suda.vim
			" ===
			cnoreabbrev sudowrite w suda://%
			cnoreabbrev sw w suda://%

			" ===
			" === Vista.vim
			" ===
			noremap <LEADER>v :Vista coc<CR>
			noremap <c-t> :silent! Vista finder coc<CR>
			let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
			let g:vista_default_executive = 'ctags'
			let g:vista_fzf_preview = ['right:50%']
			let g:vista#renderer#enable_icon = 1
			let g:vista#renderer#icons = {
				\   "function": "\uf794",
				\   "variable": "\uf71b",
				\  }
		let g:scrollstatus_size = 15

			" ===
			" === AutoFormat
			" ===
			nnoremap \f :Autoformat<CR>
			let g:formatdef_custom_js = '"js-beautify -t"'
			let g:formatters_javascript = ['custom_js']
			au BufWrite *.js :Autoformat

			" ===
			" === vimspector
			" ===
			let g:vimspector_enable_mappings = 'HUMAN'
			function! s:read_template_into_buffer(template)
			" has to be a function to avoid the extra space fzf#run insers otherwise
			execute '0r ~/.vim/sample_vimspector_json/'.a:template
			endfunction
			command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
					\   'source': 'ls -1 ~/.vim/sample_vimspector_json',
					\   'down': 20,
					\   'sink': function('<sid>read_template_into_buffer')
					\ })
			" noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
			sign define vimspectorBP text=☛ texthl=Normal
			sign define vimspectorBPDisabled text=☞ texthl=Normal
			sign define vimspectorPC text=🔶 texthl=SpellBad

			" ===
			" === vim-go
			" ===
			let g:go_echo_go_info = 0
			let g:go_doc_popup_window = 1
			let g:go_def_mapping_enabled = 0
			let g:go_template_autocreate = 0
			let g:go_textobj_enabled = 0
			let g:go_auto_type_info = 1
			let g:go_def_mapping_enabled = 0
			let g:go_highlight_array_whitespace_error = 1
			let g:go_highlight_build_constraints = 1
			let g:go_highlight_chan_whitespace_error = 1
			let g:go_highlight_extra_types = 1
			let g:go_highlight_fields = 1
			let g:go_highlight_format_strings = 1
			let g:go_highlight_function_calls = 1
			let g:go_highlight_function_parameters = 1
			let g:go_highlight_functions = 1
			let g:go_highlight_generate_tags = 1
			let g:go_highlight_methods = 1
			let g:go_highlight_operators = 1
			let g:go_highlight_space_tab_error = 1
			let g:go_highlight_string_spellcheck = 1
			let g:go_highlight_structs = 1
			let g:go_highlight_trailing_whitespace_error = 1
			let g:go_highlight_types = 1
			let g:go_highlight_variable_assignments = 0
			let g:go_highlight_variable_declarations = 0
			let g:go_doc_keywordprg_enabled = 0


			" ===
			" === COC
			" ===
			inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
			inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
			inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
			function! s:check_back_space() abort
			let col = col('.') - 1
			return !col || getline('.')[col - 1]  =~# '\s'
			endfunction
			inoremap <silent><expr> <c-space> coc#refresh()
			inoremap <silent><expr> <c-o> coc#refresh()
			function! Show_documentation()
			call CocActionAsync('highlight')
			if (index(['vim','help'], &filetype) >= 0)
				execute 'h '.expand('<cword>')
			else
				call CocAction('doHover')
					endif
					endfunction
					nnoremap <LEADER>h :call Show_documentation()<CR>

					nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<cr>
					nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
					nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
					nnoremap <c-c> :CocCommand<CR>
					" Text Objects
					xmap kf <Plug>(coc-funcobj-i)
					xmap af <Plug>(coc-funcobj-a)
					omap kf <Plug>(coc-funcobj-i)
					omap af <Plug>(coc-funcobj-a)
					xmap kc <Plug>(coc-classobj-i)
					omap kc <Plug>(coc-classobj-i)
					xmap ac <Plug>(coc-classobj-a)
					omap ac <Plug>(coc-classobj-a)
					" Useful commands
					nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
					nmap <silent> gd <Plug>(coc-definition)
					nmap <silent> gy <Plug>(coc-type-definition)
					" nmap <silent> gi <Plug>(coc-implementation)
					nmap <silent> gr <Plug>(coc-references)
					nmap <leader>rn <Plug>(coc-rename)
					nmap tt :CocCommand explorer<CR>
					" coc-translator
					nmap ts <Plug>(coc-translator-p)
					" Remap for do codeAction of selected region
					function! s:cocActionsOpenFromSelected(type) abort
					execute 'CocCommand actions.open ' . a:type
					endfunction
					xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
					nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
					" coctodolist
					nnoremap <leader>tn :CocCommand todolist.create<CR>
					nnoremap <leader>tl :CocList todolist<CR>
					nnoremap <leader>tu :CocCommand todolist.download<CR>:CocCommand todolist.upload<CR>
					" coc-tasks
					noremap <silent> <leader>ts :CocList tasks<CR>
					" coc-snippets
					imap <C-l> <Plug>(coc-snippets-expand)
					vmap <C-j> <Plug>(coc-snippets-select)
					let g:coc_snippet_next = '<c-j>'
					let g:coc_snippet_prev = '<c-k>'
					imap <C-j> <Plug>(coc-snippets-expand-jump)
					let g:snips_author = 'Dr.Stone'
					autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc

					" ===
					" === Window management
					" ===
					noremap <LEADER>w <C-w>w
					noremap <LEADER>k <C-w>k
					noremap <LEADER>j <C-w>j
					noremap <LEADER>h <C-w>h
					noremap <LEADER>l <C-w>l

					" Disable the default s key
					noremap s <nop>

					" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
					noremap sj :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
					noremap sk :set splitbelow<CR>:split<CR>
					noremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
					noremap sl :set splitright<CR>:vsplit<CR>

					" Resize splits with arrow keys
					noremap <up> :res +5<CR>
					noremap <down> :res -5<CR>
					noremap <left> :vertical resize-5<CR>
					noremap <right> :vertical resize+5<CR>

					" Place the two screens up and down
					noremap sh <C-w>t<C-w>K
					" Place the two screens side by side
					noremap sv <C-w>t<C-w>H

					" Rotate screens
					noremap srh <C-w>b<C-w>K
					noremap srv <C-w>b<C-w>H


					" ===
					" === Tab management
					" ===
					" Create a new tab with tu
					noremap tu :tabe<CR>
					" Move around tabs with tn and ti
					noremap tn :-tabnext<CR>
					noremap ti :+tabnext<CR>
					" Move the tabs with tmn and tmi
					noremap tmn :-tabmove<CR>
					noremap tmi :+tabmove<CR>

					" ===
					" === Keymap Config
					" ===

					" Save & quit
					noremap S :w<CR>
					noremap Q :q<CR>

					" Emacs keymap (insert mode cursor move)
					inoremap <C-a> <ESC>I
					inoremap <C-e> <ESC>A
					inoremap <C-f> <Right>
					inoremap <C-b> <Left>
					inoremap <C-n> <Down>
					inoremap <C-p> <Up>

					noremap 1 0
					noremap 0 $

					" Open vimrc
					noremap <LEADER>rc :e ~/.vim/vimrc<CR>

					" Copy to system clipboard
					vnoremap Y "+y

					" Indentation
					noremap < <<
					noremap > >>

					" Search
					noremap <LEADER><CR> :nohlsearch<CR>

					" Other
					noremap <LEADER>/ :set splitbelow<CR>:res +10<CR>:term<CR>

					" Call figlet
					noremap tx :r !figlet

					" Press space twice to jump to the next '<++>' and edit it
					noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

					" ===
					" === Markdown Settings
					" ===
					" Snippets
					source ~/.vim/md-snippets.vim
					" auto spell
					autocmd BufRead,BufNewFile *.md setlocal spell


					noremap <leader>r :call CompileRunGcc()<CR>
					func! CompileRunGcc()
					exec "w"
					if &filetype == 'c'
						exec "!g++ % -o %<"
							exec "!time ./%<"
							elseif &filetype == 'cpp'
							set splitbelow
							exec "!g++ -std=c++11 % -Wall -o %<"
							:sp
							:res -15
							:term ./%<
							elseif &filetype == 'java'
							exec "!javac %"
							exec "!time java %<"
							elseif &filetype == 'sh'
							:!time bash %
							elseif &filetype == 'python'
							set splitbelow
							:sp
							:term python3 %
							elseif &filetype == 'html'
							silent! exec "!".g:mkdp_browser." % &"
							elseif &filetype == 'markdown'
							exec "InstantMarkdownPreview"
							elseif &filetype == 'tex'
							silent! exec "VimtexStop"
							silent! exec "VimtexCompile"
							elseif &filetype == 'dart'
							exec "CocCommand flutter.run -d ".g:flutter_default_device
							silent! exec "CocCommand flutter.dev.openDevLog"
							elseif &filetype == 'javascript'
							set splitbelow
							:sp
							:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
							elseif &filetype == 'go'
							set splitbelow
							:sp
							:term go run .
							endif
							endfunc
