require 'clockwork'
require 'dotenv/load'
require 'slack-notify'
include Clockwork

client = SlackNotify::Client.new(
  webhook_url: ENV['WEBHOOK_URL'],
  channel: "	#dic-kadai",
  username: "mybot",
  icon_url: "http://mydomain.com/myimage.png",
  icon_emoji: ":shipit:",
  link_names: 1
)

# client.notify("Hello World!")
# puts "slack message is sent"
every(3.second, 'slack') do
  client.notify('こんにちは')
end


# handler do 
#   3.times { client.notify("Hello World!") }
# end

# every(3.seconds, 'handler.job')