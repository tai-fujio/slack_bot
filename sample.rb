require "slack-notify"
require 'dotenv'
Dotenv.load
def send_a_message
  client = SlackNotify::Client.new(
    webhook_url: ENV["API_KEY"],
    channel: "#slack_bot_app",
    username: "mybot",
    icon_emoji: ":sunny:",
  )
  client.notify(":smile:")
end
