class User < ActiveRecord::Base
  has_many :help_connections, class_name: "Connection", foreign_key: :helper_id
  has_one :seek_connection, class_name: "Connection", foreign_key: :seeker_id


end
