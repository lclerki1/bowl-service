class Calculations
  def self.sum(a, b, c)
    return a.to_i + b.to_i + c.to_i
  end
  
  def self.avg(a, b, c)
    x = sum(a, b, c)
    return x / 3
  end
end