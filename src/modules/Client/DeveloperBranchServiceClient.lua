--!strict
--[=[
	@class DeveloperBranchServiceClient
]=]

local require = require(script.Parent.loader).load(script)

local ServiceBag = require("ServiceBag")

local DeveloperBranchServiceClient = {}
DeveloperBranchServiceClient.ServiceName = "DeveloperBranchServiceClient"

export type DeveloperBranchServiceClient =
	typeof(setmetatable(
		{} :: {
			_serviceBag: ServiceBag.ServiceBag,
		},
		{} :: typeof({ __index = DeveloperBranchServiceClient })
	))

function DeveloperBranchServiceClient.Init(self: DeveloperBranchServiceClient,serviceBag: ServiceBag.ServiceBag): ()
	assert(not (self :: any)._serviceBag, "Already initialized")
	self._serviceBag = assert(serviceBag, "No serviceBag")

	-- External
	self._serviceBag:GetService(require("CmdrServiceClient"))

	-- Internal
	self._serviceBag:GetService(require("DeveloperBranchTranslator"))
end

return DeveloperBranchServiceClient
