local url = " https://d3cc-71-90-124-135.ngrok-free.app"

local player = game.Players.LocalPlayer
local data = {
    userId = player.UserId,
    username = player.Name,
    scriptName = "Test"
}

 pcall(function()
    return request({
        Url = url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(data)
    })
end)
