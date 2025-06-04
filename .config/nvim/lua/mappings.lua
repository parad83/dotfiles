-- leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap.set

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })

-- whichkey
-- map("n", "<leader>wk", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

-- markdown preview
map("n", "<leader>mp", "<cmd>MarkDownPreview <CR>", { desc = "start markdown preview" })
map("n", "<leader>mps", "<cmd>MarkDownPreviewStop <CR>", { desc = "stop markdown preview" })

-- escape terminal
map("t", "<C-w>", "<C-\\><C-N><C-w>", { desc = "terminal escape terminal mode" })
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- system clipboard
map("v", "<C-c>", "\"*y", { desc = "copy visual block to clipboard" })
map("v", "<C-v>", "\"*p", { desc = "paste visual block from clipboard" })

map("n", "<C-c>", ":let @* = expand('<cWORD>')<CR>")


-- coc
-- map("n", "<Leader>gd", "<Plug>(coc-type-definition)")
-- map("n", "<Leader>gre", "<Plug>(coc-references)")
-- map("n", "<Leader>grn", "<Plug>(coc-rename)")
-- map("n", "<Leader>gdi", "<Plug>(coc-diagnostic-info)")
-- map("n", "<Leader>gdp", "<Plug>(coc-diagnostic-prev)")
-- map("n", "<Leader>gdn", "<Plug>(coc-diagnostic-next)")

map("n", "<c-cr>", "i<cr><esc>")

local function open_url()
    local word = vim.fn.expand("<cWORD>")
    local url_pattern = "^https?://.+"

    print(word)

    if string.match(word, url_pattern) then
        local open_cmd
        if vim.fn.has("macunix") == 1 then
            open_cmd = "open"
        elseif vim.fn.has("unix") == 1 then
            open_cmd = "xdg-open"
        elseif vim.fn.has("win32") == 1 then
            open_cmd = "start"
        else
            print("Unsupported OS for opening URLs")
            return
        end
        vim.fn.jobstart({open_cmd, word}, {detach = true})
    else
        print("Not a valid URL under cursor: " .. word)
    end
end

map("n", "OO", open_url, { noremap = true, silent = true, desc = "open URL under cursor if valid" })
