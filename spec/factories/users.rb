FactoryGirl.define do

  factory :user do
    sequence(:email) { |n| "tester#{n}@example.com" }
    password "abc12345"
    password_confirmation "abc12345"
  end

end
