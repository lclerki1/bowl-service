# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.destroy_all
GameSet.destroy_all

Person.create [
  {first_name: "Lauren", last_name: "Clerkin", gender: "W"},
  {first_name: "Erin", last_name: "Hitt", gender: "W"},
  {first_name: "Chuck", last_name: "Davis", gender: "M"}
]

GameSet.create [
  {games: [175, 150, 180], date: DateTime.new(2017, 4, 6)},
  {games: [200, 190, 199], date: DateTime.new(2017, 4, 6)},
  {games: [200, 210, 195], date: DateTime.new(2017, 4, 6)}
]

Person.first.game_sets << GameSet.first
Person.last.game_sets << GameSet.last
