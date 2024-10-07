local Highlight = require("gruber-darker.highlight")
local c = require("gruber-darker.palette")
local vim_hl = require("gruber-darker.highlights.vim").highlights
local gruber_hl = require("gruber-darker.highlights.colorscheme").highlights

---@type HighlightsProvider
local M = {
	highlights = {},
}

function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end

M.highlights["neotree-dir-icon"] = Highlight.new("NeoTreeDirectoryIcon", { fg = c.brown })
M.highlights["neotree-dir-name"] = Highlight.new("NeoTreeDirectoryName", { fg = c.quartz })
M.highlights["neotree-git-added"] = Highlight.new("NeoTreeGitAdded", { fg = c.green })
M.highlights["neotree-git-conflict"] = Highlight.new("NeoTreeGitConflict", { fg = c.red })
M.highlights["neotree-git-modified"] = Highlight.new("NeoTreeGitModified", { fg = c.brown })
M.highlights["neotree-git-deleted"] = Highlight.new("NeoTreeGitDeleted", { fg = c.wisteria })
M.highlights["neotree-git-untracked"] = Highlight.new("NeoTreeGitUntracked", { fg = c.wisteria })
M.highlights["neotree-git-unstaged"] = Highlight.new("NeoTreeGitUnstaged", { fg = c.yellow })

return M
