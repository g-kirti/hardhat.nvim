local M = {}

local SUPPORTED_PLUGINS = require("hardhat.supported_plugins")

M.defaults = {
	plugin_support = vim.deepcopy(SUPPORTED_PLUGINS),
	styles = {
		italic_comments = false,
		italics = true,
		bold = false,
	},
	transparent = false,
	hl_overrides = {},
}

function M.get_active_plugins(user)
	if user == nil or user == true or user == {} then
		return SUPPORTED_PLUGINS
	end

	if user == false then
		return {}
	end

	if type(user) == "table" and user.whitelist then
		local active_plugins = {}
		for _, n in ipairs(user.whitelist) do
			active_plugins[n] = true
		end

		return active_plugins
	end

	if type(user) == "table" then
		return vim.tbl_deep_extend("force", SUPPORTED_PLUGINS, user)
	end

	return M.defaults.plugin_support
end

return M
