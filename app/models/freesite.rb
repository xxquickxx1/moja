class Freesite < ActiveRecord::Base
  belongs_to :freeby
<<<<<<< HEAD
  attr_accessible :name,:description, :photo, :download_name
=======
  attr_accessible :name,:description, :photo
>>>>>>> 27d5b4b9208a95c8fa5249434794cf8875171448
  has_attached_file :photo, :default_url => "/images/na.jpg"
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  validates_presence_of :name, :description

end
