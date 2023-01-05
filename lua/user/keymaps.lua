-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Tabs --
keymap("n", "<C-t>n", ":tabnew %<cr>", opts)
keymap("n", "<C-t>q", ":tabclose<cr>", opts)
keymap("n", "<C-t>o", ":tabonly<cr>", opts)
keymap("n", "<C-t>f", ":tabnext<cr>", opts)
keymap("n", "<C-t>b", ":tabprevious<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<C-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Write file 
keymap("n", "<leader>w", ":w<CR>", {})
-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move selected lines up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Plugins --

-- Tagbar
keymap('n', '<leader>t', ":TagbarToggle<CR>", opts)

-- Troubble specific keybindings
keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)
keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)
keymap("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", opts)

-- Rnvimr
keymap("n", "<leader>re", ":RnvimrToggle<CR>", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fw", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fm", ":Telescope media_files<CR>", opts)

-- Hop
keymap("n", "s", ":HopChar2<CR>", opts)
keymap("n", "<leader>ss", ":HopChar2MW<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Neovide
keymap("n", "<C-c>", "+y", opts)
keymap("v", "<C-c>", "+y", opts)
keymap("n", "<C-v>", "p", opts)
keymap("i", "<C-v>", "<C-r>+", opts)

-- Languages --
-- Rust specific keybindings
keymap("n", "<leader>rh", "<cmd>RustSetInlayHints<Cr>", opts)
keymap("n", "<leader>rhd", "<cmd>RustDisableInlayHints<Cr>", opts)
keymap("n", "<leader>th", "<cmd>RustToggleInlayHints<Cr>", opts)
keymap("n", "<leader>rr", "<cmd>RustRunnables<Cr>", opts)
keymap("n", "<leader>rem", "<cmd>RustExpandMacro<Cr>", opts)
keymap("n", "<leader>roc", "<cmd>RustOpenCargo<Cr>", opts)
keymap("n", "<leader>rpm", "<cmd>RustParentModule<Cr>", opts)
keymap("n", "<leader>rjl", "<cmd>RustJoinLines<Cr>", opts)
keymap("n", "<leader>rha", "<cmd>RustHoverActions<Cr>", opts)
keymap("n", "<leader>rhr", "<cmd>RustHoverRange<Cr>", opts)
keymap("n", "<leader>rmd", "<cmd>RustMoveItemDown<Cr>", opts)
keymap("n", "<leader>rmu", "<cmd>RustMoveItemUp<Cr>", opts)
keymap("n", "<leader>rsb", "<cmd>RustStartStandaloneServerForBuffer<Cr>", opts)
keymap("n", "<leader>rd", "<cmd>RustDebuggables<Cr>", opts)
keymap("n", "<leader>rv", "<cmd>RustViewCrateGraph<Cr>", opts)
keymap("n", "<leader>rw", "<cmd>RustReloadWorkspace<Cr>", opts)
keymap("n", "<leader>rss", "<cmd>RustSSR<Cr>", opts)
keymap("n", "<leader>rxd", "<cmd>RustOpenExternalDocs<Cr>", opts)
