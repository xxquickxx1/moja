class Contact < ActiveRecord::Base
	validates :name, :email, :phone_number, :message, :presence => true
	validates :name, length: {minimum: 2, maximum: 70}
	validates :phone_number, numericality: true, length: {minimum: 6}
	validates :message, length: {minimum: 10, maximum: 1000}
end
