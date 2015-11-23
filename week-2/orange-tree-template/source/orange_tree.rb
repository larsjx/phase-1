# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  attr_reader :age, :height, :oranges, :avg_diameter

  def initialize
    @age = 0
    @height = 0
  end

  def age!
    exit! if dead?
    @oranges = []
    @age += 1
    grow_taller!
    grow_oranges if has_oranges?
  end

  def grow_taller!
    @height += rand(18)+6
  end

  def has_oranges?
    @age > 5
  end

  def grow_oranges
    total_oranges = rand((700)+500)
    total_oranges.times do
      add_orange(Orange.new(rand(25)+63))
    end
  end

  def add_orange(orange_diameter)
    @oranges << orange_diameter
  end

  def avg_diameter
    total = 0
    @oranges.each do |orange|
      total += orange.diameter
    end
    return sprintf("%0.2f", (total / @oranges.length) * 0.039)
  end

  def dead?
    rand(1000)<10
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.has_oranges?
    puts @oranges.length
    @oranges.pop
  end
end

class Orange
  attr_reader :diameter

  def initialize(diameter)
    @diameter = diameter
  end

end

###################################### DRIVER TEST CODE

# tree = OrangeTree.new
# rand((20)+11).times do
#   tree.age!
#   puts "Age: #{tree.age}  -  Height: #{sprintf("%0.2f", tree.height/12)}  -  Oranges: #{tree.oranges.length}  -  Average diameter: #{tree.avg_diameter if tree.age > 5}"
# end