local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga{
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    code_action_prompt = {
        enable = false,
        sign = true,
        sign_priority = 20,
        virtual_text = true,
    },
}

vim.api.nvim_set_keymap('n', 'sf', ':Lspsaga lsp_finder<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'sp', ':Lspsaga preview_definition<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'sr', ':Lspsaga rename<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'H', ':Lspsaga hover_doc<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-f>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-b>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", {noremap=true, silent=true})
