# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quick_question do
    user_id nil
    subject "MyString"
    description "MyText"
  end
end
