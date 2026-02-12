local M = {}
local config = require("hardhat.config")

M.opts = {}

function M.setup(opts)
	M.opts = vim.tbl_deep_extend("force", {}, config.defaults, opts or {})

	M.opts.plugin_support = config.get_active_plugins(M.opts.plugin_support)
end

function M.start(palette)
	if vim.tbl_isempty(M.opts) then
		M.setup()
	end

	require("hardhat.main").load(M.opts, palette)
end

return M
