local actions = require 'telescope.actions'
local finders = require 'telescope.finders'
local pickers = require 'telescope.pickers'
local sorters = require 'telescope.sorters'
local state = require 'telescope.actions.state'

local codes = require 'js-docs-mdn.codes'

return function(open_url)
    pickers
        .new(nil, {
            prompt_title = 'JavaScript Docs',
            finder = finders.new_table {
                results = vim.tbl_keys(codes),
            },
            sorter = sorters.get_generic_fuzzy_sorter(),
            attach_mappings = function(prompt_bufnr, _)
                actions.select_default:replace(function()
                    actions.close(prompt_bufnr)

                    local selection = state.get_selected_entry()
                    local link = codes[selection[1]]

                    vim.fn.jobstart(open_url:format(link))
                end)
                return true
            end,
        })
        :find()
end
