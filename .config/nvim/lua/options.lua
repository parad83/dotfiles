local opt = vim.opt
local g = vim.g

opt.completeopt = {'menu', 'menuone', 'noselect'}

opt.syntax = enable
opt.backup = false
opt.writebackup = false
opt.swapfile = false

opt.hlsearch = true
opt.incsearch = true
opt.ruler = true

opt.showcmd = true 
opt.laststatus = 3
opt.cursorline = true

-- opt.number = true
-- opt.numberwidth = 4
-- opt.cpoptions:append('n')


opt.expandtab = true
opt.autoindent = true 
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4

opt.updatetime = 300
opt.signcolumn = "yes"

-- g.UltiSnipsExpandTrigger = "<tab>"
-- g.UltiSnipsJumpForwardTrigger = "<c-b>"
-- g.UltiSnipsJumpBackwardTrigger = "<c-z>"

-- g.UltiSnipsEditSplit = "vertical"

-- g.UltiSnipsSnippetsDir = "~/.config/nvim/UltiSnips"
-- local home = os.getenv( "HOME" )
-- g.UltiSnipsSnippetDirectories=home .. '

vim.treesitter.language.register('go', {'gosum'})
