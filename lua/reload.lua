local M = {}
local config_defaults = {}

M.config = {}
function M.reload()
    vim.cmd [[
        :mksession! /tmp/reload.vim | restart silent! source /tmp/reload.vim
    ]]
end

function M.setup(opts)
    opts = opts or {}
    M.config = vim.tbl_deep_extend("force", config_defaults, opts)
    vim.api.nvim_create_user_command("Reload", function()
        M.reload()
    end, {})
end

return M
