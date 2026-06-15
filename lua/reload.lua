local M = {}
local config_defaults = {}

M.config = {}
function M.reload()
    vim.cmd [[
        :mksession! /tmp/reload.vim | restart silent! source /tmp/reload.vim
    ]]
end

-- Ignore setup, it just does a simple command
vim.api.nvim_create_user_command("Reload", function()
    M.reload()
end, {})

return M
