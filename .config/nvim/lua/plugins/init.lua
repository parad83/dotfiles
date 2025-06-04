return {
    { 'sbdchd/neoformat' },
    -- { 
    --     "catppuccin/nvim", 
    --     name = "catppuccin", 
    --     priority = 1000,
    --     init = function()
    --         vim.cmd.colorscheme "catppuccin-mocha"
    --     end
    -- },
    {
        "dgox16/oldworld.nvim",
        lazy = false,
        priority = 1000,
        init = function()
            vim.cmd.colorscheme "oldworld"
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function() 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {
                    "c", "javascript", "html", "css", "typescript", "python", "go" 
                },
                sync_install = false,
                highlight = { 
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
                indent = { enable = true },  
            })
        end
    },    
}
