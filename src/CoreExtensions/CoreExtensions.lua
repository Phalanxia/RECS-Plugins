--!strict

local coreExtensions = {}

function coreExtensions:coreInit(core: { [any]: any })
	core.ancestorHasComponent = function(core, instance, component): Instance | nil
		local currentInstance = instance
		while currentInstance do
			if core:hasComponent(currentInstance, component) then
				return currentInstance
			elseif not currentInstance.Parent then
				return nil
			else
				currentInstance = currentInstance.Parent
			end
		end

		return nil
	end
end

return coreExtensions
