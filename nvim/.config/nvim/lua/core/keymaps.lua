-- ตั้งค่า option สำหรับ keymap
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Remap คีย์ leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ----------- Normal Mode -----------
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)      -- เปิด/ปิด file explorer
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts) -- ค้นหาไฟล์
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)  -- ค้นหาข้อความ
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)    -- ค้นหา buffer
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)  -- ค้นหา help

-- การจัดการ window
keymap("n", "<leader>sv", "<C-w>v", opts) -- split window แนวตั้ง
keymap("n", "<leader>sh", "<C-w>s", opts) -- split window แนวนอน
keymap("n", "<leader>se", "<C-w>=", opts) -- ปรับขนาด window ให้เท่ากัน
keymap("n", "<leader>sx", ":close<CR>", opts) -- ปิด window

-- Tab management
keymap("n", "<leader>to", ":tabnew<CR>", { silent = true }) -- new tab
keymap("n", "<leader>tx", ":tabclose<CR>", { silent = true }) -- close tab
keymap("n", "<leader>tn", ":tabn<CR>", { silent = true }) -- next tab
keymap("n", "<leader>tp", ":tabp<CR>", { silent = true }) -- prev tab


-- ----------- Insert Mode -----------
keymap("i", "jk", "<ESC>", opts) -- พิมพ์ jk เพื่อออกจาก insert mode

-- ----------- Visual Mode -----------
keymap("v", "<", "<gv", opts) -- เลื่อน indent ไปทางซ้าย แล้วยังคงเลือกอยู่
keymap("v", ">", ">gv", opts) -- เลื่อน indent ไปทางขวา แล้วยังคงเลือกอยู่

-- Buffer navigation
keymap("n", "<S-l>", ":bnext<CR>", { silent = true })
keymap("n", "<leader>bd", ":bdelete<CR>", { silent = true })
