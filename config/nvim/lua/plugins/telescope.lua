return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set('n', '<C-t>', builtin.find_files, {})
		vim.cmd('highlight TelescopeBorder guifg=#B7BDF8')
	end
}

