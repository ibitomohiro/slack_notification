require 'dotenv/load'
require 'slack-notify'
client = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK_URL'])