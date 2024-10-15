local dap = require "dap"
local ui = require "dapui"

ui.setup()

vim.keymap.set("n", "<leader>bp", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>gb", dap.run_to_cursor)
vim.keymap.set("n", "<leader>?", function()
	require("dapui").eval(nil, {enter = true})
	end)

vim.keymap.set("n", "<leader>bc", dap.continue)
vim.keymap.set("n", "<leader>si", dap.step_into)
vim.keymap.set("n", "<leader>so", dap.step_over)
vim.keymap.set("n", "<leader>sO", dap.step_out)
vim.keymap.set("n", "<leader>br", dap.restart)


dap.listeners.before.attach.dapui_config = function()
	ui.open()
end
dap.listeners.before.launch.dapui_config = function()
	ui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	ui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	ui.close()
end


-- Adapter Configs
local bin_locations = vim.fn.stdpath("data") .. "/mason/bin/"

-------------------- C/C++/Rust
dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  host = "127.0.0.1",
  executable = {
  command = bin_locations .. "codelldb",
  args = { "--port", "${port}" },
  },
}
 
dap.configurations.cpp = {
{
  name = "Launch file",
  type = "codelldb",
  request = "launch",
  program = function()
  return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
  end,
  cwd = "${workspaceFolder}",
  stopOnEntry = false,
  runInTerminal = false,
  },
}
 
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
