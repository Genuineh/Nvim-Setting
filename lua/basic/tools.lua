-- require("basic.config")
local os = require("os")
local unix_cpptool_path = "/cpptools/extension/debugAdapters/bin/OpenDebugAD7"
local win_cpptool_path = "C:\\cpptools\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe"
Tools = {}

function Tools.check_cpptools(platform)
    local path = ""
    local res    -- if platform == PLATFORM.unix then
    if platform == 2 then
      path = os.getenv("HOME") .. unix_cpptool_path
      res = os.execute("ls " .. path)
    else
      -- TODO: 添加windows实现
      path = win_cpptool_path
    end
    if res == 0 then
      return true
    end
    return false
end

function Tools.check_platform()
  local path_flag = package.config.sub(1,1)
  if path_flag == "//" then
    -- return PLATFORM.windows
    return 1
  end
  -- return PLATFORM.unix
  return 2
end

function Tools.install_cpptools(platform)
  if platform == 2 then
    os.execute("sh cpptools_install.sh")
  end
end

-- test
local res = Tools.check_platform()
local ok = Tools.check_cpptools(res)
print(res)
print(ok)
