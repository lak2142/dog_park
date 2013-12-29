# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner_of_dog do
  	dog
  	owner
  end
end
