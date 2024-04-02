require_relative 'spec_helper.rb'

RSpec.describe Node do
  describe '#initialize' do
    it 'initializes a value, left child and right child' do
      node = Node.new(61, "Avengers")
      expect(node.score).to eq(61)
      expect(node.name).to eq("Avengers")
      expect(node.left).to eq(nil)
      expect(node.right).to eq(nil)
    end
  end





end