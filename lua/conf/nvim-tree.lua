require("nvim-tree").setup {
  -- 自动关闭
  -- auto_close = true,
  -- 视图
  view = {
      -- 宽度
      width = 30,
      -- 高度
      height = 30,
      -- 隐藏顶部的根目录显示
      hide_root_folder = false,
      -- 自动调整大小
      auto_resize = true
  },
  -- 不显示 git 状态图标
  git = {
    enable = false
  }
}

-- 目录加上反斜杠/
vim.g.nvim_tree_add_trailing = 1

-- keybinds
-- 打开文件系统
vim.keybinds.smap('n', '<A-m>', '<cmd>NvimTreeToggle<CR>', vim.keybinds.opts)
-- 查找当前文件中的位置
vim.keybinds.smap('n', '<A-f>', '<cmd>NvimTreeFindFile<CR>', vim.keybinds.opts)

-- 默认按键
-- o     ：打开目录或文件
-- a     ：新增目录或文件
-- r     ：重命名目录或文件
-- x     ：剪切目录或文件
-- c     ：复制目录或文件
-- d     ：删除目录或文件
-- y     ：复制目录或文件名称
-- Y     ：复制目录或文件相对路径
-- gy    ：复制目录或文件绝对路径
-- p     ：粘贴目录或文件
-- s     ：使用系统默认程序打开目录或文件
-- <Tab> ：将文件添加到缓冲区，但不移动光标
-- <C-v> ：垂直分屏打开文件
-- <C-x> ：水平分屏打开文件
-- <C-]> ：进入光标下的目录
-- <C-r> ：重命名目录或文件，删除已有目录名称
-- -     ：返回上层目录
-- I     ：切换隐藏文件/目录的可见性
-- H     ：切换点文件的可见性
-- R     ：刷新资源管理器
-- 另外，文件资源管理器操作和操作文档方式一致，可按 / ? 进行搜索
