local dap = require("dap")
local cpptools_path = ""
dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = '/home/jerry/cpptools/extension/debugAdapters/bin/OpenDebugAD7'
}
