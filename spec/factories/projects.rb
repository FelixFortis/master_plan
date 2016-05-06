FactoryGirl.define do

  factory :project do
    sequence(:title) { |n| "Cook #{n} of my favourite fajitas" }
    due_date { 1.year.from_now }
    description "Chase mice run in circles yet mark territory sleep on keyboard. Claw drapes. Intently sniff hand burrow under covers for behind the couch but inspect anything brought into the house. Intently stare at the same spot flop over or give attitude or hide when guests come over yet hide when guests come over mark territory."
    association :user_id, factory: :user
  end

end