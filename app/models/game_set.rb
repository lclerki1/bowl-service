require_relative '../../lib/calculate.rb'

class GameSet < ActiveRecord::Base  
  
  belongs_to :person
  
  after_initialize :setAttr
  
  def setAttr()
    self.total = Calculate.total(self.games) unless destroyed?
    self.average = Calculate.avg(self.games) unless destroyed?
  end
end
