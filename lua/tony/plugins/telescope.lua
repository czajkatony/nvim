local builtin = require('telescope.builtin')
local telescopeAction = require('telescope.actions')

--Mine instead do ctrl n and ctrl p to navigate
-- vim.keymap.set('n', '<C-k>',telescopeAction.move_selection_previous,{})
-- vim.keymap.set('n', '<C-j>',telescopeAction.move_selection_previous,{})
-- vim.keymap.set('n', '<C-q>',telescopeAction.move_selection_previous,{})
--
--Ones I got
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


