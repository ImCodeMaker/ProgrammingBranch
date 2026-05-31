--!strict
--[[
	@class DeveloperBranchTranslator
]]

local require = require(script.Parent.loader).load(script)

return require("JSONTranslator").new("DeveloperBranchTranslator", "en", {
	gameName = "DeveloperBranch",
})
