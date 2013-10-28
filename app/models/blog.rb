class Blog < ActiveRecord::Base
	before_save :change_letters
	validates :title, :presence => true
	validates :title, :uniqueness => true

	def change_letters
		self.title.gsub!(' ', '-')
	end
end
