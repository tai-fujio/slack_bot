require "slack-notify"

def send_a_message
  client = SlackNotify::Client.new(
    webhook_url: "https://hooks.slack.com/services/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",
    channel: "#slack_bot_app",
    username: "mybot",
    icon_emoji: ":ghost:",
  )
  client.notify(":smile:")
end
