return {
    "CRAG666/code_runner.nvim",
    config=function ()
        require("code_runner").setup({
            mode="float",
            border="rounded"
        })
    end
}
