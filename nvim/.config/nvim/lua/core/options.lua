-- การแสดงบรรทัด
vim.opt.number = true            -- แสดงเลขบรรทัด
vim.opt.relativenumber = true    -- แสดงเลขบรรทัดแบบ relative

-- การย่อหน้าและ tab
vim.opt.tabstop = 2              -- 1 tab = 2 spaces
vim.opt.shiftwidth = 2           -- คำสั่ง autoindent shift = 2 spaces
vim.opt.expandtab = true         -- ใช้ spaces แทน tab
vim.opt.smartindent = true       -- เปิด smart indent

-- อื่น ๆ ที่แนะนำเพิ่ม
vim.opt.termguicolors = true     -- ใช้สีแบบ GUI
vim.opt.cursorline = true        -- ไฮไลท์บรรทัดปัจจุบัน
vim.opt.scrolloff = 8            -- เวลาขยับ cursor จะมี buffer ด้านบน/ล่าง
vim.opt.signcolumn = "yes"       -- แสดง sign column (เช่น error/gitsigns)

vim.opt.showtabline = 2          -- โชว์ tab ด้านบนตลอดเวลา
