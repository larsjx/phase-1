require_relative 'orange_tree'

#Only run this _after_ your implementation and tests are complete

tree = OrangeTree.new

tree.age! until tree.has_oranges?

puts "Tree is #{tree.age} years old and #{sprintf("%0.2f", tree.height/12)} feet tall"

until tree.dead?
  basket = []

  while tree.has_oranges?
    puts "TREE YES"
    puts tree.oranges.length
    basket << tree.pick_an_orange!
  end

  avg_diameter = # It's up to you to calculate the average diameter for this harvest.

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"
