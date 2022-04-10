--vim.g.maplocalleader = " "
vim.g.mapleader = " "

-- 保存本地变量
vim.keybinds = {
    smap = vim.api.nvim_set_keymap,
    bsmap = vim.api.nvim_buf_set_keymap,
    dmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap,
    opts = {noremap = true, silent = true}
}

-- 浏览代码
vim.keybinds.smap("n", "<C-u>", "9k", vim.keybinds.opts)
vim.keybinds.smap("n", "<C-d>", "9j", vim.keybinds.opts)

-- visual下>缩进代码
vim.keybinds.smap("v", "<", "<gv", vim.keybinds.opts)
vim.keybinds.smap("v", ">", ">gv", vim.keybinds.opts)

-- 分屏
vim.keybinds.smap("n", "sv", ":vsp<CR>", vim.keybinds.opts)
vim.keybinds.smap("n", "sh", ":sp<CR>", vim.keybinds.opts)
vim.keybinds.smap("n", "sc", "<C-w>c", vim.keybinds.opts)
vim.keybinds.smap("n", "so", "<C-w>o", vim.keybinds.opts)

-- 分屏跳转
vim.keybinds.smap("n", "<A-h>", "<C-w>h", vim.keybinds.opts)
vim.keybinds.smap("n", "<A-j>", "<C-w>j", vim.keybinds.opts)
vim.keybinds.smap("n", "<A-k>", "<C-w>k", vim.keybinds.opts)
vim.keybinds.smap("n", "<A-l>", "<C-w>l", vim.keybinds.opts)

-- 通过 leader cs 切换拼写检查
vim.keybinds.smap("n", "<leader>cs", "<cmd>set spell!<CR>", vim.keybinds.opts)
