local mc = require("multicursor-nvim")

mc.setup()
-- Add cursors above/below the main cursor.
vim.keymap.set({"n", "v"}, "<up>", function() mc.addCursor("k") end)
vim.keymap.set({"n", "v"}, "<down>", function() mc.addCursor("j") end)

-- Add a cursor and jump to the next word under cursor.
vim.keymap.set({"n", "v"}, "<C-k>", function() mc.addCursor("*") end)

vim.keymap.set("n", "<esc>", function()
    if not mc.cursorsEnabled() then
        mc.enableCursors()
    elseif mc.hasCursors() then
        mc.clearCursors()
    else
        -- Default <esc> handler.
    end
end)

-- Split visual selections by regex.
vim.keymap.set("v", "S", mc.splitCursors)

-- Append/insert for each line of visual selections.
vim.keymap.set("v", "I", mc.insertVisual)
vim.keymap.set("v", "A", mc.appendVisual)

-- match new cursors within visual selections by regex.
vim.keymap.set("v", "M", mc.matchCursors)

-- Customize how cursors look.
vim.api.nvim_set_hl(0, "MultiCursorCursor", { link = "Cursor" })
vim.api.nvim_set_hl(0, "MultiCursorVisual", { link = "Visual" })
vim.api.nvim_set_hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
vim.api.nvim_set_hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
