class AveragesController < ApplicationController
  
  def compare
    @people = Person.all
    
    if params[:week]
      @date = Date.parse(params[:week])
    elsif params[:date]
      @date = params[:date].values
      @year = @date[0].to_i
      @sMonth = @date[1].to_i
      @eMonth = @date[2].to_i
    else
      @date = Date.today
      @year = Date.today.year
      @sMonth = Date.today.month
      @eMonth = Date.today.month
    end
    
    @bowlers = []
    
    @people.each do |person|
      @bowler = {}
      @avgs = []
      @dates = [] 
      if @date == Date.today
        @time = [@date.beginning_of_week(:sunday), @date.end_of_week(:sunday)]
        @time_games = person.game_sets.where(date: (@time[0]..@time[1]))
      elsif params[:week]
        @time = [@date.beginning_of_week(:sunday), @date.end_of_week(:sunday)]
        @time_games = person.game_sets.where(date: (@time[0]..@time[1]))
      else
        @time_games = person.game_sets.where(date: (Date.new(@year, @sMonth, 1)..Date.new(@year, @eMonth, -1)))
      end
      
      @time_games.each do |set|
        @bowler["id"] = person.id
        @bowler["first_name"] = person.first_name
        @bowler["last_name"] = person.last_name
        @avgs << set.average
        @dates << set.date          
      end
      
      if @avgs.length >= 1
        @max_avg_index = @avgs.each_with_index.max[1]
        @bowler["avg"] = @avgs[@max_avg_index]
        @bowler["date"] = @dates[@max_avg_index]
        @bowler["day"] = Date::DAYNAMES[@dates[@max_avg_index].wday]
        @bowlers << @bowler
      end
    end
    if @bowlers.length >= 1
      @sorted = @bowlers.sort_by { |k| k["avg"] }.reverse   
    end 
  end
  
end
