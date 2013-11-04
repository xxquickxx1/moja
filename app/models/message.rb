class Message < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :subject, :description
  
end
