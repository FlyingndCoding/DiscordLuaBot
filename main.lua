local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
    if message.content == 'Hey' then
        message.channel:send('Sup')
    end
end)

client:run('BotToken')
