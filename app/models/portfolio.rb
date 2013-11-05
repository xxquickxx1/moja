class Portfolio < ActiveRecord::Base
	attr_accessible :name, :category, :description, :url, :photo
	has_attached_file :photo, :default_url => "/images/na.jpg"
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
