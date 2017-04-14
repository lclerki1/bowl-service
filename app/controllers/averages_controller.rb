

class AveragesController < ApplicationController
  def compare
    @people = Person.all
    
    @bowlers = []
    @user_avgs = []
    @people.each do |person|
      @bowler = {}
      @bowler["id"] = person.id
      @bowler["first_name"] = person.first_name
      @bowler["last_name"] = person.last_name
      person.game_sets.each do |set|
        @user_avgs << set.average
      end
      avg = (Calculate.avg(@user_avgs))
      @bowler["avg"] = avg
      @bowlers << @bowler
    end
    
    @sorted = @bowlers.sort_by { |k| k["avg"] }.reverse
  end

end
