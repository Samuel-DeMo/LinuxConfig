local Remap = require("Nuxnuxx.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- Classic
nnoremap("<leader>h", ":bp<CR>")
nnoremap("<leader>x", ":bd<CR>")
nnoremap("<leader>l", ":bn<CR>")
nnoremap("Y", "y$")
nnoremap("n", "nzzzn")
nnoremap("N", "Nzzzv")
nnoremap("J", "mzJ`z")
nnoremap("*", "*zz")
nnoremap("#", "#zz")
nnoremap("<C-h>", ":winc h<CR>")
nnoremap("<C-j>", ":winc j<CR>")
nnoremap("<C-k>", ":winc k<CR>")
nnoremap("<C-l>", ":winc l<CR>")
nnoremap("<leader>rc", ":e $MYVIMRC<CR>")
nmap("H", "^")
nmap("L", "$")

-- Compilation
nnoremap("<leader>z", ':call asyncrun#quickfix_toggle(6)<cr>')
nnoremap("<leader>c",
	':AsyncRun gcc -g -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" -fsanitize=address <cr>')
nnoremap("<leader>wc",
	':AsyncRun gcc -g -O0 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" -lm -fsanitize=address <cr>')
nnoremap("leader>C",
	':AsyncRun gcc g++ -g -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)"  -fsanitize=address<cr>')
nnoremap("<leader>wC", ' :AsyncRun g++ -g -O0 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)"  <cr>')
nnoremap("<leader>#", ':AsyncRun mcs -nowarn:WARNLIST -out:$(VIM_FILEDIR)/$(VIM_FILENOEXT) $(VIM_FILEPATH)<cr>')
nnoremap("<leader>j", ':AsyncRun java $(VIM_FILEPATH)<cr>')
nnoremap("<leader>#d", ':AsyncRun dotnet run <cr>')

-- Useful Tools
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")
inoremap(",", ",<c-g>u")
inoremap(".", ".<c-g>u")
inoremap("!", "!<c-g>u")
inoremap("?", "?<c-g>u")

-- Lsp
nnoremap("gD", ":lua vim.lsp.buf.declaration()<CR>")
nnoremap("gd", ":lua vim.lsp.buf.definition()<CR>")
nnoremap("gK", ":lua vim.lsp.buf.hover()<CR>")
nnoremap("gm", ":lua vim.lsp.buf.implementation()<CR>")
nnoremap("<leader>wa", ":lua vim.lsp.buf.add_workspace_folder()<CR>")
nnoremap("<leader>wr", ":lua vim.lsp.buf.remove_workspace_folder()<CR>")
nnoremap("<leader>wl", ":lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
nnoremap("<leader>D", ":lua vim.lsp.buf.type_definition()<CR>")
nnoremap("<leader>rn", ":lua vim.lsp.buf.rename()<CR>")
nnoremap("gr", ":lua vim.lsp.buf.references()<CR>")
nnoremap("[d", ":lua vim.lsp.diagnostic.goto_prev()<CR>")
nnoremap("]D", ":lua vim.lsp.diagnostic.goto_next()<CR>")
nnoremap("<leader>m", ":lua vim.lsp.buf.formatting()<CR>")

-- Disable arrow keys
nnoremap("<Up>", "<Nop>")
nnoremap("<Down>", "<Nop>")
nnoremap("<Left>", "<Nop>")
nnoremap("<Right>", "<Nop>")
inoremap("<Up>", "<Nop>")
inoremap("<Down>", "<Nop>")
inoremap("<Left>", "<Nop>")
inoremap("<Right>", "<Nop>")
