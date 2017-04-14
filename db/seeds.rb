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
  {id: 1, first_name: "Lauren", last_name: "Clerkin", gender: "W"},
  {id: 2, first_name: "Erin", last_name: "Hitt", gender: "W"},
  {id: 3, first_name: "James", last_name: "Clerkin", gender: "M"},
  {id: 4, first_name: "Mike", last_name: "Hitt", gender: "M"},
  {id: 5, first_name: "Chuck", last_name: "David", gender: "M"},
  {id: 6, first_name: "Susan", last_name: "Hoffmaster", gender: "W"},
  {id: 7, first_name: "Shawn", last_name: "Polk", gender: "M"}
]

Person.find(1).game_sets.create [
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 3, 2)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 3, 9)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 3, 16)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 3, 23)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 3, 30)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 4, 6)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 4, 13)}
]

Person.find(2).game_sets.create [
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 3, 2)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 3, 9)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 3, 16)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 3, 23)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 3, 30)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 4, 6)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 4, 13)}
]

Person.find(3).game_sets.create [
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 3, 2)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 3, 9)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 3, 16)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 3, 23)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 3, 30)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 4, 6)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 4, 13)}
]

Person.find(4).game_sets.create [
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 3, 2)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 3, 9)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 3, 16)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 3, 23)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 3, 30)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 4, 6)},
  {games: [rand(100..160), rand(100..160), rand(100..160)], date: DateTime.new(2017, 4, 13)}
]

Person.find(5).game_sets.create [
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 3, 2)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 3, 9)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 3, 16)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 3, 23)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 3, 30)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 4, 6)},
  {games: [rand(180..250), rand(180..250), rand(180..250)], date: DateTime.new(2017, 4, 13)}
]

Person.find(6).game_sets.create [
  {games: [rand(90..130), rand(90..130), rand(90..130)], date: DateTime.new(2017, 3, 2)},
  {games: [rand(90..130), rand(90..130), rand(90..130)], date: DateTime.new(2017, 3, 9)},
  {games: [rand(90..130), rand(90..130), rand(90..130)], date: DateTime.new(2017, 3, 16)},
  {games: [rand(90..130), rand(90..130), rand(90..130)], date: DateTime.new(2017, 3, 23)},
  {games: [rand(90..130), rand(90..130), rand(90..130)], date: DateTime.new(2017, 3, 30)},
  {games: [rand(90..130), rand(90..130), rand(90..130)], date: DateTime.new(2017, 4, 6)},
  {games: [rand(90..130), rand(90..130), rand(90..130)], date: DateTime.new(2017, 4, 13)}
]

Person.find(7).game_sets.create [
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 3, 2)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 3, 9)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 3, 16)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 3, 23)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 3, 30)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 4, 6)},
  {games: [rand(150..200), rand(150..200), rand(150..200)], date: DateTime.new(2017, 4, 13)}
]