class Usersite < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :website_link
	validates_uniqueness_of :website_link
end
