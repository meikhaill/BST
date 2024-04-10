require_relative 'spec_helper.rb'

RSpec.describe BinarySearchTree do
  describe '#initialize' do
    it 'initializes root as nil' do
      bst = BinarySearchTree.new
      expect(bst.root).to eq(nil)
    end
  end

  describe '#insert' do
    it 'inserts node' do
      bst = BinarySearchTree.new
      bst.insert(61, "avengers")
      expect(bst.root.score).to eq(61)
      expect(bst.root.name).to eq("avengers")
      bst.insert(50, "dune")
      expect(bst.root.left.name).to eq("dune")
      expect(bst.root.left.score).to eq(50)
    end
  end

  describe '#sort_tree' do
    it 'sorts the tree' do
      bst = BinarySearchTree.new
      bst.insert(50, "hello")
      bst.insert(40, "world")
      bst.insert(30, "its")
      bst.insert(60, "me")
      expect(bst.sort_tree).to eq([{:score=>30, :name=>"its"}, {:score=>40, :name=>"world"}, {:score=>60, :name=>"me"}])
    end
  end

  describe '#depth_of' do
    it 'returns the depth of an element' do
      bst = BinarySearchTree.new
      bst.insert(50, "hello")
      bst.insert(40, "world")
      bst.insert(30, "its")
      bst.insert(60, "me")
      expect(bst.depth_of(30)).to eq(2)
    end
  end

  describe '#include?' do
    it 'returns true if element is included false if not' do
      bst = BinarySearchTree.new
      bst.insert(50, "hello")
      bst.insert(40, "world")
      bst.insert(30, "its")
      bst.insert(60, "me")
      expect(bst.include?(40)).to eq(true)
      expect(bst.include?(44)).to eq(nil)
    end
  end

  describe '#max' do
    it 'returns the max value within the tree' do 
      bst = BinarySearchTree.new
      bst.insert(50, "hello")
      bst.insert(40, "world")
      bst.insert(30, "its")
      bst.insert(60, "me")
      expect(bst.max).to eq(60)
    end
  end

  describe '#min' do 
    it 'returns the minimum value within the three' do
      bst = BinarySearchTree.new
      bst.insert(50, "hello")
      bst.insert(40, "world")
      bst.insert(30, "its")
      bst.insert(60, "me")
      expect(bst.min).to eq(30)
    end
  end
      

end