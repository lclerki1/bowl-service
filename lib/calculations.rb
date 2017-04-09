module Calculations
  def self.sum(a, b, c)
    return a.to_i + b.to_i + c.to_i
  end
  
  def self.avg(a, b, c)
    x = sum(a, b, c)
    return (x.to_f / 3).round(2)
  end
  
  def self.gameCnt(arr)
    return arr.length
  end

end