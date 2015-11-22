require_relative 'orange_tree'

#Only run this _after_ your implementation and tests are complete

tree = OrangeTree.new
# byebug

tree.age! until tree.bearing_fruit?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

  # while tree.bearing_fruit?
    basket << tree.pick_an_orange!
  # end


  average_diameter = basket.reduce(0) do |sum, oranges|
    sum += oranges.diameter
  end

  avg_diameter = average_diameter / basket.length # It's up to you to calculate the average diameter for this harvest.

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height / 12} feet, #{tree.height % 12} inches"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"