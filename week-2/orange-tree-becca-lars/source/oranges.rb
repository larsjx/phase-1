# require 'byebug'

class NoOrangesError < StandardError
end

class OrangeTree
  attr_accessor :age, :height

  def initialize
    @age = 0
    @height = 0
    @num_oranges = 10
  end

  def age!
    if @age < 30
      @age +=1
      @height +=12
    end
  end

  def dead?
    @age > 30
  end

  def get_height
    puts "The tree is #{@height / 12} feet, #{@height % 12} inches tall."
  end

  def has_oranges?
    if @age > 4 && @oranges > 1
      @num_oranges -=1
      return true
    else
      return false
    end
  end

  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.has_oranges?
    diameter = (60 + rand(20)) * 0.04
    orange = Orange.new(diameter)
    @num_oranges -=1
  end
end

class Orange
  attr_reader :diameter

  def initialize(diameter)
    @diameter = diameter
  end
end