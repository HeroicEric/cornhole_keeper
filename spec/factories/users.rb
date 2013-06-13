# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "First#{n}name" }
    sequence(:last_name) { |n| "Last#{n}name" }
  end
end
