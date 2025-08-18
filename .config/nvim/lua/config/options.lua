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


