require_relative 'oranges'

tree = OrangeTree.new


tree.age! until tree.has_oranges?

puts "Tree is #{tree.age} years old and #{tree.height / 12} feet, #{tree.height % 12} inches tall"

until tree.dead?
  basket = []

while tree.has_oranges?
    basket << tree.pick_an_orange!
end


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