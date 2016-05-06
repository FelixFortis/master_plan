User.delete_all
Project.delete_all

adam = User.create!(email: "adam@example.com", password: "masterplan")
agathe = User.create!(email: "agathe@example.com", password: "masterplan")
chloe = User.create!(email: "chloe@example.com", password: "masterplan")

adam_project_1 = adam.projects.create!(title: "Move to ideal city", due_date: "2020-01-01", description: "3 bedroom house 15 minutes outside of Grenoble") # tag Agathe?
adam_project_1.action_steps.create!(title: "Visit and assess Grenoble", due_date: "2016-09-01", description: "Prices and quality of life assessment in Grenoble") # tag Agathe?
adam_project_2 = adam.projects.create!(title: "Remote Ruby job", due_date: "2025-01-01", description: "Become full-time employed as a Ruby dev in a remote capacity")
adam_project_3 = adam.projects.create!(title: "Financial freedom", due_date: "2025-01-01", description: "Income from my assets mean I no longer have to work if I don't want to")
adam_project_3.action_steps.create!(title: "Average monthly income of £5000", due_date: "2017-01-01", description: "Income from my assets/salary combine to £5000 per month")

agathe_project_1 = agathe.projects.create!(title: "Front end development job", due_date: "2016-06-01", description: "Get a job as a junior FED") # tag Adam?
agathe_project_2 = agathe.projects.create!(title: "New Macbook pro", due_date: "2016-09-01", description: "Make anough from matched betting to buy a £2000 Macbook")

chloe_project_1 = chloe.projects.create!(title: "Master walking", due_date: "2016-11-02", description: "Be able to walk unaided")
chloe_project_1.action_steps.create!(title: "First steps", due_date: "2016-07-02", description: "Take first unaided steps")