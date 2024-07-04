local M = {}

local open_url = require('js-docs-mdn.os').get_open_url()

M.config = {
    use = nil,
    open_url = open_url,
}

M.js_docs_mdn = function()
    if M.config.use == 'telescope' then
        require('telescope').extensions.http.list(M.config.open_url)
    elseif M.config.use == 'fzf-lua' then
        require('js-docs-mdn.fzf-lua').pick(M.config.open_url)
    end
end

M.setup = function(user_config)
    if pcall(require, 'fzf-lua') then
        M.config.use = 'fzf-lua'
    elseif pcall(require, 'telescope') then
        M.config.use = 'telescope'
    end

    if M.config.use == nil then
        vim.notify_once 'js-docs-mdn.nvim: install fzf-lua or telescope.nvim'
        return
    end

    if user_config.use then M.config.use = user_config.use end

    if not vim.tbl_contains({ 'fzf-lua', 'telescope' }, M.config.use) then
        vim.notify_once(
            'js-docs-mdn.nvim: must specify `use = {fzf-lua,telescope}` in setup.',
            vim.log.levels.ERROR
        )
        return
    end

    M.config = vim.tbl_deep_extend('force', M.config, user_config)

    if M.config.use == 'telescope' then
        require('js-docs-mdn.telescope').setup()
    end

    vim.api.nvim_create_user_command('JSDocs', M.js_docs_mdn, {})
end

return M
