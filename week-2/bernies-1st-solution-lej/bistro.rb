require 'csv'

class Recipe
  attr_reader :id, :name, :description, :ingredients, :directions, :display_recipe

  def initialize(args = {})
    @id = args["id"]
    @name = args["name"]
    @description = args["description"]
    @ingredients = args["ingredients"]
    @directions = args["directions"]
  end

  def to_s
    "\nRecipe #{id} – #{name}\n #{description} \n\n Ingredients: \n#{ingredients} \n\n Preparation Instructions: \n#{directions}"
  end

end


class Bistro
  attr_reader :filename, :recipes, :recipe

  def initialize(filename)
    @recipes = []
    load_recipes(filename)
  end

  def load_recipes(filename)
    first = true
    CSV.foreach(filename, headers: true) do |row|
      add_recipe(Recipe.new(row))
    end
  end

  def list
    # puts
    # i = 0
    recipes.each_with_index do |recipe, index|
      puts "#{index+1}. #{recipe.name}"
      # i += 1
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def find_recipe_by_id(recipe_id)
    recipes.each_index do |recipe|
      if recipes[recipe].id == recipe_id.to_s
        return recipes[recipe]
      end
      # raise "Can't find a recipe with an id of #{recipe_id.inspect}"
    end
  end

end

  bistro = Bistro.new("recipes.csv")
  bistro.list
  puts
  puts bistro.find_recipe_by_id(111)

if ARGV[0] == "list"
  bistro.list
  elsif ARGV[0] == "display"
    puts bistro.display_recipe(ARGV[1])
end



  # puts bistro.display_recipe(111)
  # puts ARGV[0]

  # def display_recipe(recipe_id)
  #   recipes.each_index do |recipe|
  #     if recipes[recipe].id == recipe_id.to_s
  #       return recipes[recipe]
  #     end
  #   end
  #   raise "Can't find a recipe with an id of #{recipe_id}"
  # end
