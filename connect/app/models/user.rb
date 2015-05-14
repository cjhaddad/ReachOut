class User < ActiveRecord::Base
  has_many :help_connections, class_name: "Connection", foreign_key: :helper_id
  has_one :seek_connection, class_name: "Connection", foreign_key: :seeker_id

  include BCrypt

  def self.authenticate(username, password)
    user = User.find_by_username(username)
    return user if user && (user.password == password)
    nil
  end

  def password
    @password || = Password.new(hashed_password)
  end

  def password=(new_password)
    self.hashed_password = Password.create(new_password)
  end

  def self.text_helpers(url, recipients)
    @client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])

    from = '+13176717463'

    recipients.each do |number|
      message = @client.account.messages.create(
                                                from: from,
                                                to: number,
                                                body: "Someone would like to connect. Follow this link: #{url}"
                                                )
    puts "sent message to #{number}"
    end
  end

end
