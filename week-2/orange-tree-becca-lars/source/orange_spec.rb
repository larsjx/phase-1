require_relative 'orange_tree'


describe 'Tree' do
let(:tree) { OrangeTree.new }
  describe 'tree age' do
    it 'returns the tree\'s age' do
      expect(tree.age).to eq(0)
    end
  end
  describe '#age!' do
    it 'adds one year to the age' do
      expect(tree.age!).to eq(1)
    end
  end
  describe '#grow!' do
    it 'adds 10 to 24 inches to height' do
      old_height = tree.height
      new_height = tree.grow!
      expect(new_height > old_height).to be(true)
      expect(new_height < old_height + 24).to be(true)
    end
  end
end

describe Orange do
end
