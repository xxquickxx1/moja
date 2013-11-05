# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    name "MyString"
    email "MyString"
    phone_number "MyString"
    message "MyText"
    read false
  end
end
