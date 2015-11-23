require_relative 'orange_tree'

#Only run this _after_ your implementation and tests are complete

tree = OrangeTree.new

tree.age! until tree.age > 5

puts "Tree is #{tree.age} years old and #{sprintf("%0.2f", tree.height/12)} feet tall"

until tree.dead?

  basket = []
  avg_diameter = tree.avg_diameter

  while tree.has_oranges?
    basket << tree.pick_an_orange!
  end

  puts "Year #{tree.age} Report"
  puts "Tree height: #{sprintf("%0.2f", tree.height/12)} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  tree.age!
end

puts "Alas, the tree, she is dead!"
