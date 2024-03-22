return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				center = {
					{
						icon = "",
						desc = "  Recently opened files",
						key = "<leader> fo",
						key_format = " [%s]",
                        action = function()
                            require("telescope.builtin").oldfiles()
                        end,
					},
                    {
                        icon = "",
                        desc = "  Find file",
                        key = "<leader> ff",
                        key_format = " [%s]",
                        action = function()
                            require("telescope.builtin").find_files()
                        end,
                    },
                    {
                        icon = "",
                        desc = "  Find word",
                        key = "<leader> fg",
                        key_format = " [%s]",
                        action = function()
                            require("telescope.builtin").live_grep()
                        end,
                    },
                    {
                        icon = "",
                        desc = "  Find help",
                        key = "<leader> fh",
                        key_format = " [%s]",
                        action = function()
                            require("telescope.builtin").help_tags()
                        end,
                    },
                    {
                        icon = "",
                        desc = "  List buffers",
                        key = "<leader> fb",
                        key_format = " [%s]",
                        action = function()
                            require("telescope.builtin").buffers()
                        end,
                    },
				},
				footer = {
                },
			},
		})
	end,
	dependencies = {
        {
            "nvim-tree/nvim-web-devicons" 
        } 
    },
}
