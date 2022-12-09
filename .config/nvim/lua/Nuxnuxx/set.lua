local o = vim.o
local g = vim.g

o.showmatch = true;
o.number = true;
o.autoindent = true;
o.tabstop = 4;
o.shiftwidth = 4;
o.swapfile = false;
o.relativenumber = true;
o.incsearch = true;
o.softtabstop = 4;
o.showtabline = 0;
o.cursorline = true;
o.hlsearch = false;
o.autowrite = true
o.termguicolors = true;

g.mapleader = ' ';
g.maplocaleader = ' ';

g.netrw_banner = 0;
g.netrw_liststyle = 0;
g.asyncrun_open = 6;
