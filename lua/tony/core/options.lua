local opt = vim.opt --for conciseness

--line numbers
opt.relativenumber = true
opt.number = true

--tabs and indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

--line wrapping
opt.wrap = false

--search settings
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

--appearance stuff
opt.termguicolors = true
opt.background = "dark"

--scroll settings
opt.scrolloff = 8
opt.signcolumn = "yes"

--update time
opt.updatetime = 50

--split windows
opt.splitright = true
opt.splitbelow = true

--color column
opt.colorcolumn = "80"

