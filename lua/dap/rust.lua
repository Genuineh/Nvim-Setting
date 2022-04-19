local dap = require('dap')
dap.configurations.rust = {
  -- {
  --   name = "Launch file",
  --   type = "lldb",
  --   request = "launch",
  --   host = "127.0.0.1",
  --   port = 39999,
  --   program = function()
  --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  --   end,
  --   cwd = '${workspaceFolder}',
  --   stopOnEntry = true,
  -- },
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,

  }
}
