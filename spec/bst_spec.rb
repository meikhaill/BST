require_relative 'spec_helper.rb'

RSpec.describe BinarySearchTree do
  describe '#initialize' do
    it 'initializes root as nil' do
      bst = BinarySearchTree.new
      expect(bst.root).to eq(nil)
    end

    
  end
end