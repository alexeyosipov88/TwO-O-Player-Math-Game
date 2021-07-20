class Player
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def name
    @name
  end

end