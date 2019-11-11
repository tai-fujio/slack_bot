require 'clockwork'
require 'active_support/time'
require './sample.rb'
require 'dotenv'
include Clockwork


module Clockwork
  handler do |job,time|
    puts "Running #{job},at #{time}"
  end
  every(3.minutes, 'send a message to slack_bot_app') do
    send_a_message
  end
end
