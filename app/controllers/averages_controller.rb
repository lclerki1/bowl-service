

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
      
      time_avg(person, params[:date])
      
      avg = (Calculate.avg(@user_avgs))
      @bowler["avg"] = avg
      @bowlers << @bowler
    end
    
    @sorted = @bowlers.sort_by { |k| k["avg"] }.reverse    
  end

  def time_avg(bowler, date)
    #records = Campaign.where(:created_at => start_date..end_date)
    #timeframe = stats_weekly(date)
    #time_games = person.game_sets.where(:date => timeframe[0]..timeframe[1])
    #return time_games
  end

  def stats_weekly(date)
    #today.beginning_of_week(:sunday)
    #startof = date.beginning_of_week(:sunday)
    #endof = date.end_of_week(:saturday)
    #return [startof, endof]
  end
end
