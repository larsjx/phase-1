
class Player

  attr_reader :position, :name

  def initialize(name)
    @name = name
    @position = 0
  end

  def move(roll)
    @position += roll
  end

end

kevin = Player.new("Kevin")
puts kevin