# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
PayFrequency.create!([{name: "Monthly", paid_per_month: 1},{name: "2x a month", paid_per_month: 2}, {name: "Weekly", paid_per_month: 4}, {name: "Changes all the time"}])
Difficulty.create!([{name: "Easy: I could quickly get another job with similar pay."},{name: "Average: I’m well qualified for many jobs but realize it may take time to find a new one."},{name: "Difficult: Jobs in my field and salary-level are limited or competitive."},{name: "Very difficult: I lack the right skills for the job market or am in an industry in which it takes a long time to land a new position at comparable pay."}])
Question.create([{question:"How much $$ do you have in a location that you could withdraw tomorrow?", category:"savings"},{question:"Note: Don’t count it if withdrawing would give you fees. You can count your checking account.", category:"savings note"},{question:"How frequently do you get paid?", category:"pay frequency"},{question:"How much do you get on each paycheck? Answer one.", category:"income"},{question:"I always get", category:"income always"},{question:"I usually get a range", category:"income range"},{question:"Average monthly expenses", category:"expenses"},{question:"Note: If you don’t know, start with your biggest expenses (rent and food) and estimate.", category:"expenses note"},{question:"How difficult would it be for you to replace your existing income?", category:"difficulty"},])