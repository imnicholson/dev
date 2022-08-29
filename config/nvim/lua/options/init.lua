local opt = vim.opt

opt.syntax = 'enable'

opt.hidden         = true
opt.splitbelow     = true
opt.splitright     = true
opt.smarttab       = true
opt.expandtab      = true
opt.smartindent    = true
opt.autoindent     = true
vim.opt_global.laststatus=3
opt.termguicolors  = true
opt.backup         = false
opt.writebackup    = false
opt.wrap           = false

vim.o.encoding     = "utf-8"
vim.o.fileencoding = "utf-8"

opt.pumheight      = 10
opt.updatetime     = 300
opt.timeoutlen     = 500
opt.conceallevel   = 0
opt.tabstop        = 2
opt.shiftwidth     = 2
opt.cmdheight      = 1
opt.relativenumber = true
opt.number         = true
opt.ignorecase     = true
opt.smartcase      = true
opt.cursorline     = true
opt.title          = true
opt.hlsearch       = false

opt.showmode       = false
opt.ruler          = false
opt.showcmd        = false
opt.list           = true
vim.o.background   = 'dark'
opt.mouse          = 'a'
vim.o.clipboard    = "unnamedplus"
