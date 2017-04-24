class HighSetController < ApplicationController
  def compare
    @people = Person.all
    
    if params[:date]
      @date = Date.parse(params[:date])
    else
      @date = Date.today
    end
    
    @time = [@date.beginning_of_week(:sunday), @date.end_of_week(:saturday)]
    
    @bowlers = []
    @user_tot = []
    @people.each do |person|
      @time_games = person.game_sets.where(date: (@time[0]..@time[1]))
      @time_games.each do |g|
        @bowler = {}
        @bowler["id"] = person.id
        @bowler["first_name"] = person.first_name
        @bowler["last_name"] = person.last_name
        @bowler["set"] = g.total
        @bowler["date"] = g.date
        @bowler["day"] = Date::DAYNAMES[g.date.wday]
        @bowlers << @bowler
      end
    end
    
    @sorted = @bowlers.sort_by { |k| k["set"] }.reverse
  end
end
