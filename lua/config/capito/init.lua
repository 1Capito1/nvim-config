-- Function to dynamically require all Lua modules in a directory
local function require_all(directory)
  -- Construct the absolute path to the target directory
  local config_path = vim.fn.stdpath("config") .. "/lua/" .. directory

  -- Use vim.loop to asynchronously scan the directory
  local handle = vim.loop.fs_scandir(config_path)
  if not handle then
    vim.notify("Failed to scan directory: " .. config_path, vim.log.levels.ERROR)
    return
  end

  while true do
    local name, type = vim.loop.fs_scandir_next(handle)
    if not name then break end
    if name == "init.lua" then goto continue end

    if type == "file" and name:match("%.lua$") then
      -- Remove the .lua extension to get the module name
      local module = name:sub(1, -5)
      -- Replace path separators with dots for nested modules
      local module_path = directory .. "." .. module

      -- Attempt to require the module safely
      local success, err = pcall(require, module_path)
      if not success then
        vim.notify("Error loading module '" .. module_path .. "': " .. err, vim.log.levels.ERROR)
      end
    elseif type == "directory" then
      -- Recursively require modules in subdirectories
      require_all(directory .. "/" .. name)
    end
    ::continue::
  end
end

require_all("config/capito")
