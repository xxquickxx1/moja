# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    user_id nil
    subject "MyString"
    description "MyText"
    website_link "MyString"
  end
end
