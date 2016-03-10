FactoryGirl.define do

  sequence(:milestone_name) { |n| "Build #{n} of my favourite sandwiches" }

  factory :milestone do
    title "#{milestone_name}"
    due_date { 6.months.from_now }
    description "Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris."
    association :goal_id, factory: :goal
  end

end
