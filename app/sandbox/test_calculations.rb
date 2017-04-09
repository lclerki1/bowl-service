#Games will be entered in as a league_set so the games will be an array of 3 games.

require '../../lib/calculations.rb'

game1 = 200
game2 = 250
game3 = 275

p "Test data is: 200, 250, and 275."
p ""

p "Test addition function"
sum = Calculations.sum(game1, game2, game3)
p "Total pins: ", sum
p ""

p "Test average function"
avg = Calculations.avg(game1, game2, game3)
p "Average: ", avg
p ""

p "Test game count function"
cnt = Calculations.gameCnt([game1, game2, game3])
p "Game Count: ", cnt
p ""

