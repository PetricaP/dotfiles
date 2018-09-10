inoremap fd <Esc>
vnoremap fd <Esc>
"Movement between windows with Alt+hjkl
if (has("nvim"))
  :tnoremap <A-h> <C-\><C-N><C-w>h
  :tnoremap <A-j> <C-\><C-N><C-w>j
  :tnoremap <A-k> <C-\><C-N><C-w>k
  :tnoremap <A-l> <C-\><C-N><C-w>l
  :tnoremap <A-u> <C-\><C-N>:vertical resize -5<CR>
  :tnoremap <A-i> <C-\><C-N>:res +5<CR>
  :tnoremap <A-o> <C-\><C-N>:res -5<CR>
  :tnoremap <A-p> <C-\><C-N>:vertical resize +5<CR>
  :tnoremap <A-1> <C-\><C-N>:buffer 1<CR>
  :tnoremap <A-2> <C-\><C-N>:buffer 2<CR>
  :tnoremap <A-3> <C-\><C-N>:buffer 3<CR>
  :tnoremap <A-4> <C-\><C-N>:buffer 4<CR>
  :tnoremap <A-5> <C-\><C-N>:buffer 5<CR>
  :tnoremap <A-6> <C-\><C-N>:buffer 6<CR>
  :tnoremap <A-7> <C-\><C-N>:buffer 7<CR>
  :tnoremap <A-8> <C-\><C-N>:buffer 8<CR>
  :tnoremap <A-9> <C-\><C-N>:buffer 9<CR>
  :tnoremap <A-t> exit<CR>:set number<CR>:set relativenumber<CR>
  :tnoremap jk <C-\><C-N>
  :nnoremap <A-t> :term<CR>:set nonumber<CR>:set norelativenumber<CR>i
  :tnoremap <C-q> <C-\><C-N>:bd!<CR>
  :tnoremap <A-q> <C-\><C-N>:buffer #<CR>
  :tnoremap <Space><Tab> <C-\><C-N>:buffer #<CR>
  :tnoremap <Space>bd <C-\><C-N>:quit<CR>
en

inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <A-u> :vertical resize -5<CR>
nnoremap <A-i> :res +5<CR>
nnoremap <A-o> :res -5<CR>
nnoremap <A-p> :vertical resize +5<CR>

inoremap <A-u> <C-\><C-N>:vertical resize -5<CR>a
inoremap <A-i> <C-\><C-N>:res +5<CR>a
inoremap <A-o> <C-\><C-N>:res -5<CR>a
inoremap <A-p> <C-\><C-N>:vertical resize +5<CR>a

nnoremap <A-5> :buffer 5<CR>
nnoremap <A-6> :buffer 6<CR>
nnoremap <A-7> :buffer 7<CR>
nnoremap <A-8> :buffer 8<CR>
nnoremap <A-9> :buffer 9<CR>
inoremap <C-d> <Del>
inoremap <A-d> <Del>
nnoremap <C-o> i<CR><Esc>kA
nnoremap <C-c>c :make<CR>
nnoremap <C-c>r :make<CR>:!run<CR>
nnoremap <C-c>d :make<CR>:VBGstartGDB output<CR>:VBGcontinue<CR>
nnoremap <C-u> :UndotreeToggle<CR>

" Set folding
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set autoread

set shiftwidth=4
set softtabstop=4
set noexpandtab

let g:spacevim_auto_disable_touchpad = 1
let g:chromatica#libclang_path = '/usr/lib/x86_64-linux-gnu/libclang-6.0.so.1'

nnoremap ,vim :e<Space>~/.SpaceVim.d/autoload/config.vim<CR>
nnoremap <C-f> :Neoformat<CR>

set tags=./tags,/usr/include/tags

let g:neomake_cpp_enabled_makers = ['clangtidy']
let g:neomake_cpp_clangtidy_maker = {
   \ 'exe': 'clang-tidy',
   \ 'args': ['-checks=*,-fuchsia-default-arguments,-google-readability-namespace-comments,-llvm-namespace-comment', '-header-filter=.*', '-extra-arg=-std=c++1z'],
   \}

let g:neomake_c_enabled_makers = ['clangtidy']
let g:neomake_c_clangtidy_maker = {
   \ 'exe': 'clang-tidy',
   \ 'args': ['-checks=*', '-header-filter=.*'],
   \}

let g:neomake_java_enabled_makers = ['javac']
let g:neomake_java_javac_args = ['-classpath lib/jars/lwjgl.jar; lib/jars/lwjgl-util.jar; lib/jars/slick-util.jar']
let g:neomake_java_javac_maker = {
   \ 'exe': 'javac',
   \ 'args': ['-classpath lib/jars/lwjgl.jar; lib/jars/lwjgl-util.jar; lib/jars/slick-util.jar'],
   \}

set path+=./include/
set wildignore+=*.so,*.a,lib/*

set foldmethod=marker
set foldnestmax=10
set foldlevel=2
let g:ycm_global_ycm_extra_conf="~/.vim/.ycm_extra_conf.py"
let g:ycm_compilation_database_folder="build/"
let g:chromatica#dotclangfile_search_path="build/"

" Fix Python Path (for YCM)
let g:ycm_path_to_python_interpreter="/usr/bin/python3"

let g:_spacevim_mappings_space.C = get(g:_spacevim_mappings_space, 'C',  {'name' : '+Build'})
call SpaceVim#mapping#space#def('nnoremap', ['C', 'b'], ':!cd build && cmake ..' , 'build', 1)
call SpaceVim#mapping#space#def('nnoremap', ['C', 'c'], ':!make || make -C build/' , 'compile', 1)
call SpaceVim#mapping#space#def('nnoremap', ['C', 'e'], ':!make clean', 'clean', 1)
call SpaceVim#mapping#space#def('nnoremap', ['C', 'r'], ':!./run 2>/dev/null', 'run', 1)
call SpaceVim#mapping#space#def('nnoremap', ['C', 'd'], ':sp<CR><C-w>j:term<CR>:set nonumber<CR>:set norelativenumber<CR>igdb `cat run 2>/dev/null || echo output` -ex start -tui <CR>', 'debug', 1)

let g:_spacevim_mappings_space.G = get(g:_spacevim_mappings_space, 'G',  {'name' : '+Generate'})
call SpaceVim#mapping#space#def('nnoremap', ['G', 'c'], ":silent execute '!cppgen % -c -x ' . line('.')", 'constructor', 1)
call SpaceVim#mapping#space#def('nnoremap', ['G', 'd'], ":silent execute '!cppgen % -d -x ' . line('.')", 'destructor', 1)
call SpaceVim#mapping#space#def('nnoremap', ['G', 'k'], ":silent execute '!cppgen % -k -x ' . line('.')", 'copy constructor', 1)
call SpaceVim#mapping#space#def('nnoremap', ['G', 'm'], ":silent execute '!cppgen % -m -x ' . line('.')", 'move constructor', 1)
call SpaceVim#mapping#space#def('nnoremap', ['G', 'a'], ":silent execute '!cppgen % -a -x ' . line('.')", 'copy assignment operator', 1)
call SpaceVim#mapping#space#def('nnoremap', ['G', 'n'], ":silent execute '!cppgen % -n -x ' . line('.')", 'move assignment operator', 1)
call SpaceVim#mapping#space#def('nnoremap', ['G', 'g'], ":silent execute '!cppgen % -g -x ' . line('.')", 'header guards', 1)
call SpaceVim#mapping#space#def('nnoremap', ['G', 'e'], ":silent execute '!cppgen % -cdkman -x ' . line('.')", 'everything', 1)
call SpaceVim#mapping#space#def('nnoremap', ['G', 'i'], ":silent execute '!impl.py %'", 'implimentations', 1)

let g:_spacevim_mappings_space.D = get(g:_spacevim_mappings_space, 'D',  {'name' : '+Testing'})
call SpaceVim#mapping#space#def('nnoremap', ['D', 'r'], ":!make.sh; echo % | cut -f 1 -d '.' | cut -f 2,3 -d '/' | sed 's/test_//g' | bash &", 'run test from this file', 1)

let g:_spacevim_mappings_space.Y = get(g:_spacevim_mappings_space, 'Y',  {'name' : '+YouCompleteMe'})
call SpaceVim#mapping#space#def('nnoremap', ['Y', 'f'], ":YcmCompleter FixIt", 'FixIt', 1)
call SpaceVim#mapping#space#def('nnoremap', ['Y', 'D'], ":YcmCompleter GoToDefinition", 'Go to definition', 1)
call SpaceVim#mapping#space#def('nnoremap', ['Y', 'd'], ":YcmCompleter GoToDeclaration", 'Go to declaration', 1)
call SpaceVim#mapping#space#def('nnoremap', ['Y', 'g'], ":YcmCompleter GoTo", 'Go to', 1)
