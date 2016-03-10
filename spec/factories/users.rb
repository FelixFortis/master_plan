FactoryGirl.define do
  
  sequence(:email) { |n| "tester#{n}@example.com" }

  factory :user do
    email
    password "abc12345"
  end

end
