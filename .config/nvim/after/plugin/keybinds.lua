local Remap = require("config.keymap")
local nnoremap = Remap.nnoremap
-- local vnoremap = Remap.vnoremap
-- local inoremap = Remap.inoremap
-- local xnoremap = Remap.xnoremap
-- local nmap = Remap.nmap

nnoremap("<leader>p", ":Telescope find_files<CR>")
nnoremap("<leader>b", ":Telescope buffers<CR>")
nnoremap("<leader>d", ":Telescope diagnostics<CR>")
nnoremap("<leader>f", ":Telescope live_grep<CR>")
nnoremap("<leader>k", ":Telescope keymaps<CR>")
nnoremap("<leader>v", ":Telescope treesitter<CR>")

nnoremap("<leader>we", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
nnoremap("<leader>wa", ":lua require('harpoon.mark').add_file()<CR>")
nnoremap("<leader>w1", ":lua require('harpoon.ui').nav_file(1)<CR>")
nnoremap("<leader>w2", ":lua require('harpoon.ui').nav_file(2)<CR>")
nnoremap("<leader>w3", ":lua require('harpoon.ui').nav_file(3)<CR>")
nnoremap("<leader>w4", ":lua require('harpoon.ui').nav_file(4)<CR>")
nnoremap("<leader>wh", ":lua require('harpoon.ui').nav_previous()<CR>")
nnoremap("<leader>wl", ":lua require('harpoon.ui').nav_next()<CR>")

nnoremap("<leader>g", ":Neogit<CR>");

nnoremap ("<leader>t", ":ToggleTerm direction=horizontal size=10<CR>")
vim.api.nvim_set_keymap('t', '<leader>x', '<C-\\><C-n>:ToggleTerm<CR>', {noremap = true, silent = true})
