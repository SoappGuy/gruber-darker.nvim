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

M.highlights.snacks_normal = Highlight.new("SnacksNormal", { link = vim_hl.Normal })
M.highlights.snacks_win_bar = Highlight.new("SnacksWinBar", { link = vim_hl.Title })
M.highlights.snacks_backdrop = Highlight.new("SnacksBackdrop", { bg = c["bg"] })
M.highlights.snacks_dashboard_normal = Highlight.new("SnacksDashboardNormal", { link = vim_hl.Normal })
M.highlights.snacks_dashboard_desc = Highlight.new("SnacksDashboardDesc", { link = vim_hl.Statement })
M.highlights.snacks_dashboard_file = Highlight.new("SnacksDashboardFile", { link = vim_hl.Statement })
M.highlights.snacks_dashboard_dir = Highlight.new("SnacksDashboardDir", { link = gruber_hl.fg })
M.highlights.snacks_dashboard_footer = Highlight.new("SnacksDashboardFooter", { link = vim_hl.Title })
M.highlights.snacks_dashboard_header = Highlight.new("SnacksDashboardHeader", { link = vim_hl.Title })
M.highlights.snacks_dashboard_icon = Highlight.new("SnacksDashboardIcon", { link = gruber_hl.wisteria })
M.highlights.snacks_dashboard_key = Highlight.new("SnacksDashboardKey", { link = gruber_hl.niagara })

return M
