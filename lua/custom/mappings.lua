local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "add breakpoint at line" },
    ["<leader>dr"] = { "<cmd> DapContinue <CR>", "Run or Continue the debugger" }
  },
}

M.general = {
  plugin = true,
  n = {
    ['J'] = {'<cmd> >+1<CR>gv=gv'},
    ['K'] = {'<cmd> <-2<CR>gv=gv'}
  }
}


-- Add the following lines to your Neovim Lua configuration

vim.api.nvim_exec([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
]], false)




return M
