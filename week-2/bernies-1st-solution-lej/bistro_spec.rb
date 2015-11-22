require_relative('bistro')

describe Recipe do
end

describe Bistro do
  let(:bistro) { Bistro.new("recipes.csv") }

  it 'should load recipes' do
  expect(bistro.list).to eq("1. Kale Burger 2. Poodle Cake (For your puppy!)3. Peanut Butter Coffee Brownie")
  end

  describe "#find_recipe_by_id" do
    it 'should find a recipe by id' do
    expect(bistro.find_recipe_by_id(567)).to eq("Peanut Butter Coffee Brownie")
    end

    it "should raise an exception if it can't find a recipe" do
      #How do I check exceptions? Here's an example
      # expect { my_thing.method_that_raises }.to raise_error
    end
  end
end
