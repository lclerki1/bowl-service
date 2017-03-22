# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Player.distroy_all

Player.create! [
  { first_name: "Lauren", last_name: "Clerkin", gender: "female" },
  { first_name: "Erin", last_name: "Hitt", gender: "female" },
  { first_name: "Susan", last_name: "Hoffmaster", gender: "female" },
  { first_name: "Shawn", last_name: "Polk", gender: "male" },
  { first_name: "Chuck", last_name: "Davis", gender: "male" }
]