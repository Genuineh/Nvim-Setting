---@diagnostic disable: undefined-global
-- https://github.com/wbthomason/packer.nvim
local packer = require("packer")
packer.startup(
    {
        -- 所有插件的安装都书写在 function 中
        function()
            -- 包管理器
            use {
                "wbthomason/packer.nvim"
            }

            -- theme
            use {
              "rebelot/kanagawa.nvim",
              config = function()
                require("conf.kanagawa")
              end
            }

            -- vim-airline
            use {
              'vim-airline/vim-airline'
            }

            -- buffer
            use {
              "akinsho/bufferline.nvim",
              requires = {
                -- 删除buffer时不影响现有布局
                "famiu/bufdelete.nvim"
              },
              config = function()
                require("conf.bufferline")
              end
            }

            use {
              "kyazdani42/nvim-tree.lua",
              requires = {
                -- 依赖一个图标插件
                "kyazdani42/nvim-web-devicons"
              },
              config = function()
                require("conf.nvim-tree")
              end
            }
            -- 搜索数目标记
            use {
              "kevinhwang91/nvim-hlslens",
              config = function()
                require("conf.nvim-hlslens")
              end
            }
            -- 显示缩进线
            use {
              "lukas-reineke/indent-blankline.nvim",
              config = function()
                require("conf.indent-blankline")
              end
            }
            -- 自动保存
            use {
              "Pocco81/AutoSave.nvim",
              config = function()
                require("conf.AutoSave")
              end
            }
            -- 保留上次位置
            use {
              "ethanholz/nvim-lastplace",
              config = function()
                require("conf.nvim-lastplace")
              end
            }
            -- 保存上次会话
            use {
              "rmagatti/auto-session",
              config = function()
                require("conf.auto-session")
              end
            }
            -- 终端美化
            use {
              "akinsho/toggleterm.nvim",
              config = function()
                require("conf.toggleterm")
              end
            }
            -- telescope 搜索插件
            use {
              "nvim-telescope/telescope.nvim",
              requires = {
                "nvim-lua/plenary.nvim", -- lua 开发模块
                "BurntSushi/ripgrep", -- 文字查找
                "sharkdp/fd" -- 文件查找
              },
              config = function()
                require("conf.telescope")
              end
            }
            -- nvim-notify 通知插件
            use {
              "rcarriga/nvim-notify",
              config = function()
                require("conf.nvim-notify")
              end
            }
            -- todo
            use {
              "folke/todo-comments.nvim",
              config = function()
                require("conf.todo-comments")
              end
            }
            -- LSP基础服务
            use {
              "neovim/nvim-lspconfig",
              config = function()
                require("conf.nvim-lspconfig")
              end
            }
            -- 自动安装 LSP
            use {
              "williamboman/nvim-lsp-installer",
              config = function()
                require("conf.nvim-lsp-installer")
              end
            }
            -- LSP UI 美化
            use {
              "tami5/lspsaga.nvim",
              config = function()
                require("conf.lspsaga")
              end
            }
            -- 插入模式传参提示
            use {
              "ray-x/lsp_signature.nvim",
              config = function()
                require("conf.lsp_signature")
              end
            }
            -- 灯泡代码提示
            use {
              "kosayoda/nvim-lightbulb",
              config = function()
                require("conf.nvim-lightbulb")
              end
            }
            -- 自动代码补全系列插件
            use {
              "hrsh7th/nvim-cmp",  -- 代码补全核心插件，下面都是增强补全的体验插件
              requires = {
                {"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
                {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
                {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
                {"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
                {"hrsh7th/cmp-path"}, -- 路径补全
                {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
                {"hrsh7th/cmp-cmdline"}, -- 命令补全
                {"f3fora/cmp-spell"}, -- 拼写建议
                {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
                {"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
                {"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
            },
            config = function()
              require("conf.nvim-cmp")
            end
          }
          -- 语法高亮
          use {
            "nvim-treesitter/nvim-treesitter",
            run = {":TSupdate"},
            config = function ()
              require("conf.nvim-treesitter")
            end
          }
          -- 注释
          use {
            "numToStr/Comment.nvim",
            requires = {
              "JoosepAlviste/nvim-ts-context-commentstring"
            },
            config = function ()
              require("conf.Comment")
            end
          }
          -- 格式化
          use {
            "sbdchd/neoformat",
            config = function ()
              require("conf.neoformat") 
            end
          }
          -- 代码调试基础插件
          use {
            "mfussenegger/nvim-dap",
            config = function ()
              require("conf.nvim-dap") 
            end
          }
          -- python
          use {
            "mfussenegger/nvim-dap-python"
          }
          -- 为代码调试提供内联文本
          use {
            "theHamsta/nvim-dap-virtual-text",
            requires = {
              "mfussenegger/nvim-dap"
            },
            config = function ()
              require("conf.nvim-dap-virtual-text") 
            end

          }
          -- 代码调试提供UI界面
          use {
            "rcarriga/nvim-dap-ui",
            requires = {
              "mfussenegger/nvim-dap"
            },
            config = function ()
              require("conf.nvim-dap-ui") 
            end


          }
        end,
        -- 使用浮动窗口
        config = {
            display = {
                open_fn = require("packer.util").float
            }
        }
    }
)

-- 实时生效配置
vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)

