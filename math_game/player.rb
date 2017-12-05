class Player

  attr_accessor :name
  attr_accessor :points

  def initialize(name)
    @name = name
    @points = 3
  end

  def deduct_point
    @points -= 1
  end

end