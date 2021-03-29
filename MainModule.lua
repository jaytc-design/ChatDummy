local clientFunctions = {}
local serverFunctions = {}



if game:GetService("RunService"):IsServer() then
    return serverFunctions
elseif game:GetService("RunService"):IsClient() then
    return clientFunctions
end