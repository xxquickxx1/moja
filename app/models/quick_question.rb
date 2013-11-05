class QuickQuestion < ActiveRecord::Base
  belongs_to :user

   validates :subject, length: {
    minimum: 5,
    maximum: 100,
    presence: true
}
validates :description, length: {
    minimum: 20,
    maximum: 500,
    presence: true
}
end
