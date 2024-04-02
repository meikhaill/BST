require_relative 'spec_helper.rb'

RSpec.describe Node do
  describe '#initialize' do
    it 'initializes a value, left child and right child' do
      node = Node.new(50)
      expect(node.value).to eq(50)
      expect(node.left).to eq(nil)
      expect(node.right).to eq(nil)
    end

    
  end
end