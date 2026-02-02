local M = {}

local uname = vim.loop.os_uname().sysname

M.is_windows = uname == "Windows_NT"
M.is_linux   = uname == "Linux"
M.is_termux  = vim.fn.isdirectory("/data/data/com.termux") == 1

return M

