require_relative 'node.rb'

class BinarySearchTree

  attr_reader :root

  def initialize 
    @root = nil
  end

  def insert(curr_node, node)
    if @root = nil
      @root = node
      curr_node = @root
    end
    
    if node.score == curr_node
      return node
    elsif 
      node.score < curr_node.score
      curr_node.left = node
      curr_node = curr_node.left
    elsif 
      node.score > curr_node.score
      curr_node.right = node
      curr_node = curr_node.right
    else
      puts "failure"
    end


  end
end