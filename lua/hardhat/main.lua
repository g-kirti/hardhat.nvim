local M = {}

M.transparent_groups = {
	["Normal"] = true,
	["NormalNC"] = true,
	["SignColumn"] = true,
	["FoldColumn"] = true,
	["EndOfBuffer"] = true,
	["StatusLine"] = true,
	["StatusLineNC"] = true,
	["VertSplit"] = true,
	["WinSeparator"] = true,
}

local function paint(syntax, opts)
	local styles = opts.styles or {}

	-- group-specific overrides
	local group_overrides = {
		["@comment"] = function(hl)
			hl.italic = styles.italic_comments == true
		end,
	}

	for group, hl in pairs(syntax) do
		-- global bold/italics
		hl.bold = styles.bold ~= false and hl.bold
		hl.italic = styles.italics ~= false and hl.italic

		-- apply transparency if set
		if opts.transparent and M.transparent_groups[group] then
			hl.bg = "NONE"
		end

		if group_overrides[group] then
			group_overrides[group](hl)
		end

		-- apply the highlight
		vim.api.nvim_set_hl(0, group, hl)
	end
end

function M.load(opts, palette)
	-- reset highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "hardhat"

	-- get highlights
	local palette_path = "hardhat.palettes." .. palette
	local p = require(palette_path).load_colors()
	local h = require("hardhat.highlights")

	local syntax = h.load_base_syntax(p)

	for plugin_name, enabled in pairs(opts.plugin_support) do
		if enabled then
			local plugin_path = "hardhat.plugins." .. plugin_name
			local status, plugin = pcall(require, plugin_path)
			if status then
				local plugin_highlights = plugin.load_plugin_syntax(p)
				syntax = vim.tbl_deep_extend("force", syntax, plugin_highlights)
			end
		end
	end

	-- add user highlight overrides
	syntax = vim.tbl_deep_extend("force", syntax, opts.hl_overrides)

	paint(syntax, opts)
end

return M
