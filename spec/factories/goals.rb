FactoryGirl.define do

  sequence(:goal_name) { |n| "Cook #{n} of my favourite fajitas" }

  factory :goal do
    title "#{goal_name}"
    due_date { 1.year.from_now }
    description "Chase mice run in circles yet mark territory sleep on keyboard. Claw drapes. Intently sniff hand burrow under covers for behind the couch but inspect anything brought into the house. Intently stare at the same spot flop over or give attitude or hide when guests come over yet hide when guests come over mark territory."
    association :user_id, factory: :user
  end

end