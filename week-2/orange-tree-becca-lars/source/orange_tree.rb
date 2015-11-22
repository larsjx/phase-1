# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  attr_accessor :age, :height

  def initialize
    @age = 0
    @height = 0
  end

  def age!
    self.age += 1
    self.grow!
    self.bearing_fruit?
  end

  def grow!
    self.height += 6 + rand(18) if self.height < (25 * 12)
  end

  def dead?
    if self.age == 30
      puts "Your tree is dead."
      true
    else
      false
    end
  end

  def get_height
    puts "The tree is #{self.height / 12} feet, #{self.height % 12} inches tall."
  end

  def bearing_fruit?
    self.age > 3 && self.height > 48
    # return false
  end

  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.bearing_fruit?
    diameter = (60 + rand(20)) * 0.04
    orange = Orange.new(diameter)
  end
end

class Orange
  attr_reader :diameter

  def initialize(diameter)
    @diameter = diameter
  end
end