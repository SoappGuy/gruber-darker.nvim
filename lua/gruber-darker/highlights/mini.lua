local Highlight = require("gruber-darker.highlight")
local c = require("gruber-darker.palette")

---@type HighlightsProvider
local M = {
	highlights = {},
}

function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end

M.highlights["mini-line-normal"] = Highlight.new("MiniStatuslineModeNormal", { fg = c.yellow, bg = c["bg+2"] })
M.highlights["mini-line-insert"] = Highlight.new("MiniStatuslineModeInsert", { fg = c.niagara, bg = c["bg+2"] })
M.highlights["mini-line-visual"] = Highlight.new("MiniStatuslineModeVisual", { fg = c.green, bg = c["bg+2"] })
M.highlights["mini-line-command"] = Highlight.new("MiniStatuslineModeCommand", { fg = c.brown, bg = c["bg+2"] })

M.highlights["mini-diff-sign-add"] = Highlight.new("MiniDiffSignAdd", { fg = c.green })
M.highlights["mini-diff-sign-change"] = Highlight.new("MiniDiffSignChange", { fg = c.brown })
M.highlights["mini-diff-sign-delete"] = Highlight.new("MiniDiffSignDelete", { fg = c["red-1"] })

return M
