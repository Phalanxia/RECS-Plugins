--!strict

local RunService = game:GetService("RunService")

local componentPropsPlugin = {}

function componentPropsPlugin:componentAdded(core, entityId, componentInstance)
	if typeof(entityId) == "Instance" then
		for name, value in pairs(entityId:GetAttributes()) do
			componentInstance[name] = value
		end
	end
end

return componentPropsPlugin
