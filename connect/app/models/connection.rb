class Connection < ActiveRecord::Base
  belongs_to :helper, class_name: "User"
  belongs_to :seeker, class_name: "User"


end
