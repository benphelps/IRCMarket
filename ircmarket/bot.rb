# encoding: UTF-8
require_relative 'gems/gems'
require_relative 'database/database'

# Plugins
require_relative 'plugins/core/buy_long'

bot = Cinch::Bot.new do
	configure do |c|
		
		c.server = "vps.benphelps.me"
		c.port = 2390
		c.password = "brokerdev:brokerdev"
		c.channels = ["#phelps"]
		c.messages_per_second = 999999
		c.max_messages = 999999
		c.plugins.plugins = [
			BuyLong
		]
	end

end

bot.start