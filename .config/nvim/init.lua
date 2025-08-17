--[[

This is my little config. It is inspired of kickstart.nvim

- `vim.g` is global variables used by plugins.
- `vim.o` is Vim options.

--]]


--[[
--
-- Vim options
--
--]]

-- Show line numbers
vim.o.number = true

-- Highlight the line number on which the cursor is
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync the clipboard between Neovim and the OS
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
-- It determines how long Vim waits after the last keypress before it:
-- * Writes swap files to disk.
-- * ...
vim.o.updatetime = 250

-- Key sequences respond faster
vim.o.timeoutlen = 300

-- Case-insensitive searching UNLESS \C or one or more capital letters is in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Configure how new splits should be opened
vim.o.splitright = true -- right instead of left
vim.o.splitbelow = true -- below instead of above

-- Shows certain invisible characters
-- `listchars` is opt because it is a table
vim.o.list = true
vim.opt.listchars = {
    tab = '» ',    -- A tab character is shown as » followed by a space
    trail = '·',   -- Trailing spaces at the end of a line are shown as ·
    nbsp = '␣'     -- Non-breaking spaces are displayed as ␣
}

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Normally, after a search (/pattern) matches stay highlighted
-- Pressing Esc will now turn off search highlighting immediately without leaving normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Disable NodeJS, Perl and Ruby language providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

--[[
-- 
-- Globals
--
--]]

-- Set mapleaders
vim.g.mapleader = ' '
vim.g.localmapleader = ' '

-- I have a nerdfont installed
vim.g.have_nerd_font = true

