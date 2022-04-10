---@diagnostic disable: undefined-global
vim.opt.termguicolors = true
require('bufferline').setup {
  options = {
    -- 为每个buffer 配置一个序数
    numbers = "ordinal",
    -- 使用 nvim 内置lsp
    diagnostics = 'nvim_lsp',
    -- 左侧让出nvim-tree位置
    offsets = {{
      filetype = 'NvimTree',
      text = 'File Explorer',
      highligh = 'Directory',
      text_align = 'left'
    }}
  }
}

-- keybinds
-- bufferline tab左右切换
vim.keybinds.smap('n', '<C-h>', ':BufferLineCyclePrev<CR>', vim.keybinds.opts)
vim.keybinds.smap('n', '<C-l>', ':BufferLineCycleNext<CR>', vim.keybinds.opts)

-- 关闭当前buffer
vim.keybinds.smap("n", "<C-q>", "<cmd>Bdelete!<CR>", vim.keybinds.opts)


