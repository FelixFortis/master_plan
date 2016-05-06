FactoryGirl.define do

  factory :milestone do
    sequence(:title) { |n| "Build #{n} of my favourite sandwiches" }
    due_date { 6.months.from_now }
    description "Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris."
    association :project_id, factory: :project
  end

end
