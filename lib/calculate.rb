module Calculate
  def self.total(array)
    return array.inject(0, :+)
  end
  
  def self.avg(array)
    x = total(array)
    return (x.to_f / gameCnt(array)).round(2)
  end
  
  def self.gameCnt(array)
    return array.length
  end

end