class Sale < ActiveRecord::Base

	attr_accessible :monthly_payment, :category_fit, :cms, :training, :description, :e_commerce, :credit_card, :admin, :users, :seo, :responsive, :contact_form, :images, :features, :price, :photo
	has_attached_file :photo, :default_url => "/images/na.jpg"

validates :training, :description, :admin, :users, :contact_form, :images, :features, :price, :price, :presence => true
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end

