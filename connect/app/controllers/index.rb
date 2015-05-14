# require 'twilio-ruby'

get '/' do

  # accountSID = 'AC26b99524e4e895228567bb7802caf7a7'
  # authToken = '2c9b943fe29fef0b293e34d05db5341c'

  # p ENV['ACCOUNT_SID']
  # p ENV['AUTH_TOKEN']

  @client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])

  from = '+13176717463'

  friends = ["+13179858281",
             "+17083051838",
             "+18473704680"]

  friends.each do |number|
    message = @client.account.messages.create(
                                              from: from,
                                              to: number,
                                              body: "heeyeyeyeyeyeyeyeyey, did you get this?"
                                              )
  puts "sent message to #{number}"
  end

  erb :index
end

