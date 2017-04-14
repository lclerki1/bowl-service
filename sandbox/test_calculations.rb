#Games will be entered in as a league_set so the games will be an array of 3 games.

require '../lib/calculate.rb'
require_relative '../config/environment'

games = [200, 250, 275]

p "Test data is: 200, 250, and 275."
p ""

p "Test addition function"
sum = Calculate.total(games)
p "Total pins: ", sum
p ""

p "Test average function"
avg = Calculate.avg(games)
p "Average: ", avg
p ""

p "Test game count function"
cnt = Calculate.gameCnt(games)
p "Game Count: ", cnt
p ""

# Note that rake seed.db should have been run already

# Test seed filling
lauren = Person.find(1)
p lauren.game_sets
p ''

# Testing calculations with tables
p "Test with database"
user1 = Person.first
p user1
p GameSet.first

arr = Person.first.game_sets.to_a
p arr.first.games

user_avgs = []
bowler = []
Person.first.game_sets.each do |game|
      user_avgs << game.average
    end
    avg = (Calculate.total(user_avgs) / user_avgs.length)
    bowler << Person.first.first_name
    bowler << avg
p bowler





