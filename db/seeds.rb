User.delete_all
Goal.delete_all

adam = User.create!(email: "adam@example.com", password: "masterplan")
agathe = User.create!(email: "agathe@example.com", password: "masterplan")
chloe = User.create!(email: "chloe@example.com", password: "masterplan")

adam.goals.create!(title: "Move to ideal city", goal_type: "goal", due_date: "2020-01-01", description: "3 bedroom house 15 minutes outside of Grenoble") # tag Agathe?
adam.goals.create!(title: "Visit and assess Grenoble", goal_type: "milestone", due_date: "2016-09-01", description: "Prices and quality of life assessment in Grenoble") # tag Agathe?
adam.goals.create!(title: "Remote Ruby job", goal_type: "goal", due_date: "2025-01-01", description: "Become full-time employed as a Ruby dev in a remote capacity")
adam.goals.create!(title: "Financial freedom", goal_type: "goal", due_date: "2025-01-01", description: "Income from my assets mean I no longer have to work if I don't want to")
adam.goals.create!(title: "Average monthly income of £5000", goal_type: "milestone", due_date: "2017-01-01", description: "Income from my assets/salary combine to £5000 per month")
agathe.goals.create!(title: "Front end development job", goal_type: "goal", due_date: "2016-06-01", description: "Get a job as a junior FED") # tag Adam?
agathe.goals.create!(title: "New Macbook pro", goal_type: "goal", due_date: "2016-09-01", description: "Make anough from matched betting to buy a £2000 Macbook")
chloe.goals.create!(title: "Master walking", goal_type: "goal", due_date: "2016-11-02", description: "Be able to walk unaided")
chloe.goals.create!(title: "First steps", goal_type: "milestone", due_date: "2016-07-02", description: "Take first unaided steps")