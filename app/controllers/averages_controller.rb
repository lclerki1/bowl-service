

class AveragesController < ApplicationController
  def compare
    @people = Person.all
  end

end
