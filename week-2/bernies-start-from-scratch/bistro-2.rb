require 'csv'

class Recipe
attr_reader :id, :name, :description, :ingredients, :directions

  def initialize(args = {})
    @id = args["id"]
    @name = args["name"]
    @description = args["description"]
    @ingredients = args["ingredients"]
    @directions = args["directions"]
  end

  def to_s
    "\nRecipe #{id} – #{name}\n#{description}\n#{ingredients}\n#{directions}\n"
  end

end

class Bistro

  def initialize(filename)
    @recipes = []
    load_recipes(filename)
  end

  def load_recipes(filename)
    CSV.foreach(filename, headers: true) do |row|
      add_recipe(Recipe.new(row))
    end
  end

  def list
    @recipes.each_with_index do |recipe, index|
      puts "#{index+1}. #{recipe.name}"
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def find_recipe_by_id(recipe_id)
    @recipes.each do |recipe|
      if recipe.id == recipe_id.to_s
        return recipe
      end
    end
    raise "The recipe you are looking for doesn't exist"
  end
end

bistro = Bistro.new("recipes.csv")
bistro.list
puts bistro.find_recipe_by_id(567)

if ARGV[0] == "list"
  bistro.list
elsif ARGV[0] == "display"
  puts bistro.find_recipe_by_id(ARGV[1])
end