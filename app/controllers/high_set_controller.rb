class HighSetController < ApplicationController
  def compare
    @people = Person.all
    
    @bowlers = []
    @user_tot = []
    @people.each do |person|
      @bowler = {}
      @bowler["id"] = person.id
      @bowler["first_name"] = person.first_name
      @bowler["last_name"] = person.last_name
      person.game_sets.each do |set|
        @user_tot << set.total
      end
      @bowler["total"] = @user_tot.max
      @bowlers << @bowler
    end
    
    @sorted = @bowlers.sort_by { |k| k["total"] }.reverse
  end
end
