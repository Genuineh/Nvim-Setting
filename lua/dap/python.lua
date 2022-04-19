require("dap-python").setup("/usr/bin/python3")
--[[ -- python3 -m pip install debugpy
return {
    adapters = {
        type = "executable",
        command = "python",
        args = {"-m", "debugpy.adapter"}
    },
    configurations = {
        {
            type = "python",
            requet = "launch",
            name = "Launch file",
            program = "${workspaceFolder}/${file}",
            pythonPath = function()
              return 'C:/Users/12134/anaconda3/python'
                -- return vim.g.python_path
            end
        }
    }
} ]]
