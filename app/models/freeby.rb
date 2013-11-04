class Freeby < ActiveRecord::Base
	has_many :freesites, :dependent => :destroy
end
