return {
    "pocco81/auto-save.nvim",
    config = function ()
        require("auto-save").setup({
            enabled = true,
            events = {"InsertLeave"},
            conditions = {
                exists = true,
                filetype_is_not = {},
                modifiable = true
            },
            write_all_buffers = false,
            on_off_commands = true,
            clean_command_line_interval = 0,
            debounce_delay = 135
        })
    end
}
