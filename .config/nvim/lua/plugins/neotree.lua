return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		lazy = false,
		---@module "neo-tree"
		---@type neotree.Config?
		opts = {
			-- fill any relevant options here
			filesystem = {
				filtered_items = {
					visible = false, -- hide filtered items on open
					hide_gitignored = false,
					hide_dotfiles = false,
					hide_by_name = {},
					never_show = { ".git" },
				},
			},
		},
		config = function(_, opts)
			-- This is where you configure Neo-tree
			-- You can also add more options here, see `:help neo-tree` for details
			require("neo-tree").setup(opts)

			-- Optionally, you can set up keybindings for Neo-tree
			vim.keymap.set("n", "<leader>e", ":Neotree toggle left<cr>", { desc = "Show Neo-tree" })
		end,
	},
}
