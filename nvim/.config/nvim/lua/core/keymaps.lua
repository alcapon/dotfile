-- ตั้ง Space เป็น leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set
local opts = { silent = true, noremap = true }

-- Save & Quit
map("n", "<leader>s", ":w<CR>", opts) -- Space + s → save
map("n", "<leader>q", ":q<CR>", opts) -- Space + q → quit
map("n", "<leader>Q", ":q!<CR>", opts) -- Space + Q → force quit
map("n", "<leader>wq", ":wq<CR>", opts) -- Space + wq → save & quit

-- Buffer
map("n", "<leader><Tab>", ":bnext<CR>", opts) -- ไป buffer ถัดไป
map("n", "<leader><S-Tab>", ":bprevious<CR>", opts) -- ไป buffer ก่อนหน้า

-- Tab (เหมือน Ctrl+PageUp/PageDown ของ VS Code)
map("n", "<C-PageDown>", "gt", opts) -- Ctrl+PageDown → tab ถัดไป
map("n", "<C-PageUp>", "gT", opts) -- Ctrl+PageUp   → tab ก่อนหน้า
map("n", "<C-t>", ":tabnew<CR>", opts) -- Ctrl+t → เปิด tab ใหม่
map("n", "<C-w>", ":tabclose<CR>", opts) -- Ctrl+w → ปิด tab ปัจจุบัน

-- Window (split navigation, resize)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize window ด้วย Ctrl+Arrow
map("n", "<C-Up>", ":resize +2<CR>", opts)
map("n", "<C-Down>", ":resize -2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)
