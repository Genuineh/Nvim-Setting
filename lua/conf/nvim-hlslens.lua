-- https://github.com/kevinhwang91/nvim-hlslens
-- 其实不用管下面这些键位绑定是什么意思，总之按下这些键位后会出现当前搜索结果的条目数量
vim.keybinds.smap(
    "n",
    "n",
    "<Cmd>execute('normal!'.v:ount1.'n')<CR><Cmd>lua require('hlslens').start()<CR>",
    vim.keybinds.opts
)
vim.keybinds.smap(
    "n",
    "N",
    "<Cmd>execute('normal!'.v:count1.'N')<CR><Cmd>lua require('hlslens').start()<CR>",
    vim.keybinds.opts
)
vim.keybinds.smap("n", "*", "*<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)
vim.keybinds.smap("n", "#", "#<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)
vim.keybinds.smap("n", "g*", "g*<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)
vim.keybinds.smap("n", "g#", "g#<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)
