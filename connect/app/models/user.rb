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

end
