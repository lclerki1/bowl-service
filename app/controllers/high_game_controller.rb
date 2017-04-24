class HighGameController < ApplicationController
  def compare
    @people = Person.all
    
    if params[:date]
      @date = Date.parse(params[:date])
    else
      @date = Date.today
    end
    
    @time = [@date.beginning_of_week(:sunday), @date.end_of_week(:saturday)]
    
    @bowlers = []
    @people.each do |person|
      @time_games = person.game_sets.where(date: (@time[0]..@time[1]))
      @time_games.each do |set|
        @user_games = []
        @bowler = {}
        @bowler["id"] = person.id
        @bowler["first_name"] = person.first_name
        @bowler["last_name"] = person.last_name
        set.games.each do |game|
          @user_games << game
        end
        @bowler["game"] = @user_games.max
        @bowler["date"] = set.date
        @bowler["day"] = Date::DAYNAMES[set.date.wday]
        @bowlers << @bowler
      end
    end
    
    @sorted = @bowlers.sort_by { |k| k["game"] }.reverse
  end
  
end
