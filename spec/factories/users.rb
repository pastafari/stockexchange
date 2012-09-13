# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Bob"
    email "bob@dummy.com"
    password "baz"
  end
end
