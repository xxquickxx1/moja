class Testimonial < ActiveRecord::Base
	validates :name, :website, :description, :presence => true
end
