# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
PayFrequency.create!([{name: "Monthly"},{name: "2x a month"}, {name: "Weekly"}, {name: "Changes all the time"}])
Difficulty.create!([{name: "Easy: I could quickly get another job with similar pay."},{name: "Average: I’m well qualified for many jobs but realize it may take time to find a new one."},{name: "Difficult: Jobs in my field and salary-level are limited or competitive."},{name: "Very difficult: I lack the right skills for the job market or am in an industry in which it takes a long time to land a new position at comparable pay."}])