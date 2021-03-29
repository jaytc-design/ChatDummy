local clientFunctions = {}
local serverFunctions = {}

function clientFunctions:ChatMakeSystemMessage(...)
    local succ,err = pcall(Function()
        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {...})
    end)
    return succ,err
end

if game:GetService("RunService"):IsServer() then
    return serverFunctions
elseif game:GetService("RunService"):IsClient() then
    return clientFunctions
end