local discordia = require('discordia')
local client = discordia.Client()
local token = 'Bot ODU2NTc4MTg3NTA0MjU0OTc2.GUhmjS.-YWZNPkVkYaNKgDkODt6QT8IdC9pxyFhgr28qc'

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == '!ping' then
		message.channel:send('Pong!')
	end
end)


client:run(token)
