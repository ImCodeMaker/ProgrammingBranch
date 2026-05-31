--!strict
--[=[
	@class DeveloperBranchService
]=]

local require = require(script.Parent.loader).load(script)

local ServiceBag = require("ServiceBag")

local DeveloperBranchService = {}
DeveloperBranchService.ServiceName = "DeveloperBranchService"

export type DeveloperBranchService =
	typeof(setmetatable(
		{} :: {
			_serviceBag: ServiceBag.ServiceBag,
		},
		{} :: typeof({ __index = DeveloperBranchService })
	))

function DeveloperBranchService.Init(self: DeveloperBranchService, serviceBag: ServiceBag.ServiceBag): ()
	assert(not (self :: any)._serviceBag, "Already initialized")
	self._serviceBag = assert(serviceBag, "No serviceBag")

	-- External
	self._serviceBag:GetService(require("CmdrService"))

	-- Internal
	self._serviceBag:GetService(require("DeveloperBranchTranslator"))
end

return DeveloperBranchService
