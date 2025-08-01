-- theme & transparency
vim.cmd.colorscheme("habamax")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

-- Basic settings
-- vim.opt.title = true                               -- show title
-- vim.opt.titlestring = "NVIM: %t"  -- show just filename
vim.opt.number = true                              -- Line numbers
vim.opt.relativenumber = true                      -- Relative line numbers
vim.opt.cursorline = true                          -- Highlight current line
vim.opt.wrap = false                               -- Don't wrap lines
vim.opt.scrolloff = 10                             -- Keep 10 lines above/below cursor 
vim.opt.sidescrolloff = 8                          -- Keep 8 columns left/right of cursor

-- Indentation
vim.opt.tabstop = 2                                -- Tab width
vim.opt.shiftwidth = 2                             -- Indent width
vim.opt.softtabstop = 2                            -- Soft tab stop
vim.opt.expandtab = true                           -- Use spaces instead of tabs
vim.opt.smartindent = true                         -- Smart auto-indenting
vim.opt.autoindent = true                          -- Copy indent from current line

-- Search settings
vim.opt.ignorecase = true                          -- Case insensitive search
vim.opt.smartcase = true                           -- Case sensitive if uppercase in search
vim.opt.hlsearch = false                           -- Don't highlight search results 
vim.opt.incsearch = true                           -- Show matches as you type

-- Netrw
vim.g.netrw_banner = 0                             -- no banner for netrw
vim.g.netrw_browse_split = 4                       -- open in prior window
vim.g.netrw_altv = 1                               -- right splitting
vim.g.netrw_liststyle = 3                          -- tree style view

-- Visual settings
vim.opt.termguicolors = true                       -- Enable 24-bit colors
vim.opt.signcolumn = "yes"                         -- Always show sign column
vim.opt.colorcolumn = "100"                        -- Show column at 100 characters
vim.opt.showmatch = true                           -- Highlight matching brackets
vim.opt.matchtime = 2                              -- How long to show matching bracket
vim.opt.cmdheight = 1                              -- Command line height
vim.opt.completeopt = "menuone,noinsert,noselect"  -- Completion options 
vim.opt.showmode = false                           -- Don't show mode in command line 
vim.opt.pumheight = 10                             -- Popup menu height 
vim.opt.pumblend = 10                              -- Popup menu transparency 
vim.opt.winblend = 0                               -- Floating window transparency 
vim.opt.conceallevel = 0                           -- Don't hide markup 
vim.opt.concealcursor = ""                         -- Don't hide cursor line markup 
vim.opt.lazyredraw = true                          -- Don't redraw during macros
vim.opt.synmaxcol = 300                            -- Syntax highlighting limit 
vim.opt.syntax = "ON"

-- File handling
vim.opt.backup = false                             -- Don't create backup files
vim.opt.writebackup = false                        -- Don't create backup before writing
vim.opt.swapfile = false                           -- Don't create swap files
vim.opt.undofile = true                            -- Persistent undo
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")  -- Undo directory
vim.opt.updatetime = 300                           -- Faster completion
vim.opt.timeoutlen = 500                           -- Key timeout duration
vim.opt.ttimeoutlen = 0                            -- Key code timeout
vim.opt.autoread = true                            -- Auto reload files changed outside vim
vim.opt.autowrite = false                          -- Don't auto save

-- Behavior settings
vim.opt.hidden = true                              -- Allow hidden buffers
vim.opt.errorbells = false                         -- No error bells
vim.opt.backspace = "indent,eol,start"             -- Better backspace behavior
vim.opt.autochdir = false                          -- Don't auto change directory
vim.opt.iskeyword:append("-")                      -- Treat dash as part of word
vim.opt.path:append("**")                          -- include subdirectories in search
vim.opt.selection = "exclusive"                    -- Selection behavior
-- vim.opt.mouse = "a"                                -- Enable mouse support
vim.opt.clipboard:append("unnamedplus")            -- Use system clipboard
vim.opt.modifiable = true                          -- Allow buffer modifications
vim.opt.encoding = "UTF-8"                         -- Set encoding

-- Cursor settings
-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Folding settings
-- vim.opt.foldmethod = "expr"                             -- Use expression for folding
-- vim.wo.vim.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Use treesitter for folding
-- vim.opt.foldlevel = 99                                  -- Start with all folds open

-- Split behavior
vim.opt.splitbelow = true                          -- Horizontal splits go below
vim.opt.splitright = true                          -- Vertical splits go right

-- Key mappings
vim.g.mapleader = " "                              -- Set leader key to space
vim.g.maplocalleader = " "                         -- Set local leader key (NEW)

-- Exit Insert mode with 'jj'
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with 'jj'" })

-- Normal mode mappings
vim.keymap.set("n", "<leader>c", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Splitting & Resizing
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Quick file navigation
vim.keymap.set("n", "<leader>e", ":25Lex<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>ff", ":find ", { desc = "Find file" })

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Quick config editing
-- vim.keymap.set("n", "<leader>rc", ":e ~/.config/nvim/init.lua<CR>", { desc = "Edit config" })

-- ============================================================================
-- USEFUL FUNCTIONS
-- ============================================================================
--
-- Copy Full File-Path
vim.keymap.set("n", "<leader>pa", function()
	local path = vim.fn.expand("%:p")
	vim.fn.setreg("+", path)
	print("file:", path)
end)
--
-- -- Basic autocommands
local augroup = vim.api.nvim_create_augroup("UserConfig", {})
--
-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  callback = function()
    vim.highlight.on_yank()
  end,
})
--
-- Return to last edit position when opening files
vim.api.nvim_create_autocmd("BufReadPost", {
  group = augroup,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})
--
-- -- Set filetype-specific settings
-- vim.api.nvim_create_autocmd("FileType", {
--   group = augroup,
--   pattern = { "lua", "python" },
--   callback = function()
--     vim.opt_local.tabstop = 4
--     vim.opt_local.shiftwidth = 4
--   end,
-- })
--
-- vim.api.nvim_create_autocmd("FileType", {
--   group = augroup,
--   pattern = { "javascript", "typescript", "json", "html", "css" },
--   callback = function()
--     vim.opt_local.tabstop = 2
--     vim.opt_local.shiftwidth = 2
--   end,
-- })
--
-- -- Auto-close terminal when process exits
-- vim.api.nvim_create_autocmd("TermClose", {
--   group = augroup,
--   callback = function()
--     if vim.v.event.status == 0 then
--       vim.api.nvim_buf_delete(0, {})
--     end
--   end,
-- })
--
-- -- Disable line numbers in terminal
-- vim.api.nvim_create_autocmd("TermOpen", {
--   group = augroup,
--   callback = function()
--     vim.opt_local.number = false
--     vim.opt_local.relativenumber = false
--     vim.opt_local.signcolumn = "no"
--   end,
-- })
--
-- -- Auto-resize splits when window is resized
-- vim.api.nvim_create_autocmd("VimResized", {
--   group = augroup,
--   callback = function()
--     vim.cmd("tabdo wincmd =")
--   end,
-- })
--
-- Create directories when saving files
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  callback = function()
    local dir = vim.fn.expand('<afile>:p:h')
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, 'p')
    end
  end,
})
--
-- Command-line completion
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })
--
-- -- Better diff options
-- vim.opt.diffopt:append("linematch:60")
--
-- Performance improvements
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000
--
-- Create undo directory if it doesn't exist
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end
--
-- -- ============================================================================
-- -- FLOATING TERMINAL
-- -- ============================================================================
--
-- -- terminal
-- local terminal_state = {
--   buf = nil,
--   win = nil,
--   is_open = false
-- }
--
-- local function FloatingTerminal()
--   -- If terminal is already open, close it (toggle behavior)
--   if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
--     vim.api.nvim_win_close(terminal_state.win, false)
--     terminal_state.is_open = false
--     return
--   end
--
--   -- Create buffer if it doesn't exist or is invalid
--   if not terminal_state.buf or not vim.api.nvim_buf_is_valid(terminal_state.buf) then
--     terminal_state.buf = vim.api.nvim_create_buf(false, true)
--     -- Set buffer options for better terminal experience
--     vim.api.nvim_buf_set_option(terminal_state.buf, 'bufhidden', 'hide')
--   end
--
--   -- Calculate window dimensions
--   local width = math.floor(vim.o.columns * 0.8)
--   local height = math.floor(vim.o.lines * 0.8)
--   local row = math.floor((vim.o.lines - height) / 2)
--   local col = math.floor((vim.o.columns - width) / 2)
--
--   -- Create the floating window
--   terminal_state.win = vim.api.nvim_open_win(terminal_state.buf, true, {
--     relative = 'editor',
--     width = width,
--     height = height,
--     row = row,
--     col = col,
--     style = 'minimal',
--     border = 'rounded',
--   })
--
--   -- Set transparency for the floating window
--   vim.api.nvim_win_set_option(terminal_state.win, 'winblend', 0)
--
--   -- Set transparent background for the window
--   vim.api.nvim_win_set_option(terminal_state.win, 'winhighlight',
--     'Normal:FloatingTermNormal,FloatBorder:FloatingTermBorder')
--
--   -- Define highlight groups for transparency
--   vim.api.nvim_set_hl(0, "FloatingTermNormal", { bg = "none" })
--   vim.api.nvim_set_hl(0, "FloatingTermBorder", { bg = "none", })
--
--   -- Start terminal if not already running
--   local has_terminal = false
--   local lines = vim.api.nvim_buf_get_lines(terminal_state.buf, 0, -1, false)
--   for _, line in ipairs(lines) do
--     if line ~= "" then
--       has_terminal = true
--       break
--     end
--   end
--
--   if not has_terminal then
--     vim.fn.termopen(os.getenv("SHELL"))
--   end
--
--   terminal_state.is_open = true
--   vim.cmd("startinsert")
--
--   -- Set up auto-close on buffer leave 
--   vim.api.nvim_create_autocmd("BufLeave", {
--     buffer = terminal_state.buf,
--     callback = function()
--       if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
--         vim.api.nvim_win_close(terminal_state.win, false)
--         terminal_state.is_open = false
--       end
--     end,
--     once = true
--   })
-- end
--
-- -- Function to explicitly close the terminal
-- local function CloseFloatingTerminal()
--   if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
--     vim.api.nvim_win_close(terminal_state.win, false)
--     terminal_state.is_open = false
--   end
-- end
--
-- -- Key mappings
-- vim.keymap.set("n", "<leader>t", FloatingTerminal, { noremap = true, silent = true, desc = "Toggle floating terminal" })
-- vim.keymap.set("t", "<Esc>", function()
--   if terminal_state.is_open then
--     vim.api.nvim_win_close(terminal_state.win, false)
--     terminal_state.is_open = false
--   end
-- end, { noremap = true, silent = true, desc = "Close floating terminal from terminal mode" })
--
--
-- -- ============================================================================
-- -- TABS
-- -- ============================================================================
--
-- Tab display settings
vim.opt.showtabline = 1  -- Always show tabline (0=never, 1=when multiple tabs, 2=always)
vim.opt.tabline = ''     -- Use default tabline (empty string uses built-in)
--
-- Transparent tabline appearance
vim.cmd([[
  hi TabLineFill guibg=NONE ctermfg=242 ctermbg=NONE
]])

-- Alternative navigation (more intuitive)
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close tab' })
vim.keymap.set('n', '<Tab>', ':tabn<CR>', { desc = 'next tab gt' })
vim.keymap.set('n', '<S-Tab>', ':tabp<CR>', { desc = 'prev tab gT' })

-- Tab moving
vim.keymap.set('n', '<leader>tm', ':tabmove<CR>', { desc = 'Move tab' })
vim.keymap.set('n', '<leader>t>', ':tabmove +1<CR>', { desc = 'Move tab right' })
vim.keymap.set('n', '<leader>t<', ':tabmove -1<CR>', { desc = 'Move tab left' })

-- Function to open file in new tab
local function open_file_in_tab()
  vim.ui.input({ prompt = 'File to open in new tab: ', completion = 'file' }, function(input)
    if input and input ~= '' then
      vim.cmd('tabnew ' .. input)
    end
  end)
end

-- Function to duplicate current tab
local function duplicate_tab()
  local current_file = vim.fn.expand('%:p')
  if current_file ~= '' then
    vim.cmd('tabnew ' .. current_file)
  else
    vim.cmd('tabnew')
  end
end

-- Function to close tabs to the right
local function close_tabs_right()
  local current_tab = vim.fn.tabpagenr()
  local last_tab = vim.fn.tabpagenr('$')

  for i = last_tab, current_tab + 1, -1 do
    vim.cmd(i .. 'tabclose')
  end
end

-- Function to close tabs to the left
local function close_tabs_left()
  local current_tab = vim.fn.tabpagenr()

  for i = current_tab - 1, 1, -1 do
    vim.cmd('1tabclose')
  end
end

-- Enhanced keybindings
vim.keymap.set('n', '<leader>tO', open_file_in_tab, { desc = 'Open file in new tab' })
vim.keymap.set('n', '<leader>td', duplicate_tab, { desc = 'Duplicate current tab' })
vim.keymap.set('n', '<leader>tr', close_tabs_right, { desc = 'Close tabs to the right' })
vim.keymap.set('n', '<leader>tL', close_tabs_left, { desc = 'Close tabs to the left' })

-- Function to close buffer but keep tab if it's the only buffer in tab
local function smart_close_buffer()
  local buffers_in_tab = #vim.fn.tabpagebuflist()
  if buffers_in_tab > 1 then
    vim.cmd('bdelete')
  else
    -- If it's the only buffer in tab, close the tab
    vim.cmd('tabclose')
  end
end
vim.keymap.set('n', '<leader>bd', smart_close_buffer, { desc = 'Smart close buffer/tab' })

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    {
      'nvim-treesitter/nvim-treesitter',
      event = 'VeryLazy',
      dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
      },
      build = ':TSUpdate',
      opts = {
        highlight = {
          enable = true,
          disable = { "c", "rust", "latex", "tex" },
        },
        indent = { enable = true },
        auto_install = true,
        ensure_installed = { 'lua' },
      },
      config = function (_, opts)
        local configs = require("nvim-treesitter.configs")
        configs.setup(opts)
        require("nvim-treesitter.install").compilers = { "clang" }
      end
    },
    -- add your other plugins here
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
