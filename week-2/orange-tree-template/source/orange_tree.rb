# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree

  def initialize


  # Ages the tree one year
  def age!
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def has_oranges?
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.has_oranges?

    # orange-picking logic goes here
  end
end

class Orange
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
  end
end
