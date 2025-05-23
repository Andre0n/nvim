vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

-- Numbers
vim.opt.relativenumber = true
vim.opt.numberwidth = 2
vim.opt.ruler = false

-- Features
vim.opt.backup = false
vim.opt.clipboard = { 'unnamedplus' }
vim.opt.cmdheight = 1
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.formatoptions = 'jcroqlnt'
vim.opt.grepformat = '%f:%l:%c:%m'
vim.opt.grepprg = 'rg --vimgrep'
vim.opt.laststatus = 3
vim.opt.list = true
vim.opt.fileencoding = 'utf-8'
vim.opt.sessionoptions = {
  'buffers',
  'curdir',
  'tabpages',
  'winsize',
  'help',
  'globals',
  'skiprtp',
  'folds',
}
vim.opt.shortmess:append({ W = true, I = true, c = true, C = true })
vim.opt.whichwrap:append('<>[]hl')

vim.opt.showmode = false
vim.opt.sidescrolloff = 8
vim.opt.splitkeep = 'screen'
vim.opt.undolevels = 10000
vim.opt.wildmode = 'longest:full,full'
vim.opt.fillchars = {
  foldopen = '',
  foldclose = '',
  fold = "⸱",
  foldsep = ' ',
  diff = '╱',
  eob = ' ',
}
vim.opt.guicursor = 'i-ci:block'
vim.opt.hidden = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.ignorecase = true
vim.opt.mouse = 'v'
vim.opt.signcolumn = 'yes'
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.timeoutlen = 400
vim.opt.undodir = vim.fn.stdpath('cache') .. '/undo'
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.wrap = false
vim.opt.writebackup = false

-- Split panels
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.smoothscroll = true

-- folding
vim.opt.foldlevel = 99
vim.opt.foldexpr = ''
vim.opt.foldmethod = 'manual'
vim.opt.pumheight = 10

vim.g.markdown_recommended_style = 0

vim.g['loaded_node_provider'] = 0
vim.g['loaded_python3_provider'] = 0
vim.g['loaded_perl_provider'] = 0
vim.g['loaded_ruby_provider'] = 0
