# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sale do
    monthly_payment "MyString"
    cms "MyString"
    training "MyString"
    description "MyText"
    e_commerce "MyString"
    credit_card "MyString"
    admin "MyString"
    users "MyString"
    type ""
    seo "MyString"
    responsive "MyString"
    contact_form "MyString"
    images "MyString"
    features "MyString"
    price "9.99"
  end
end
