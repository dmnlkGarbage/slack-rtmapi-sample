require 'slack-rtmapi'
require 'pp'
require 'json'
url = SlackRTM.get_url token: ''
client = SlackRTM::Client.new websocket_url: url

client.on(:message) do |data|
    if data['type'] == 'channel_joined'
        p data['channel']['name']
    end
    pp data
end
client.main_loop
