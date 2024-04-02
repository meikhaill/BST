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


  # describe '#insert'
  #   it 'inserts itself into the bst' do 
  #     tree = BinarySearchTree
  #     node1 = Node.new(10)
  #     node2 = Node.new(5)
  #     node3 = Node.new(15)

end