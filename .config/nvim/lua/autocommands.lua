vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.vs", "*.fs" },
    command = "setlocal filetype=glfw"
})
