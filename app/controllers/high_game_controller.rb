class HighGameController < ApplicationController
  def compare
    @people = Person.all
    
    @bowlers = []
    @user_games = []
    @people.each do |person|
      @bowler = {}
      @bowler["id"] = person.id
      @bowler["first_name"] = person.first_name
      @bowler["last_name"] = person.last_name
      person.game_sets.each do |set|
        set.games.each do |game|
          @user_games << game
        end
      end
      
      @bowler["game"] = @user_games.max
      @bowlers << @bowler
    end
    
    @sorted = @bowlers.sort_by { |k| k["game"] }.reverse
  end
end
