require_relative 'node.rb'

class BinarySearchTree

  attr_accessor :root

  def initialize 
    @root = nil
  end

  def insert(score,name)
    @root = insert_recursively(@root, score, name)
  end

  def insert_recursively(curr_node, score, name)
    if @root == nil
      node = Node.new(score, name)
      @root = node
    end

    if curr_node == nil
      curr_node = Node.new(score, name)
    end
    
    
    
    if score < curr_node.score 
      curr_node.left = Node.new(score, name)
      curr_node = curr_node.left
      puts "new node on left"
      puts curr_node
    
    elsif score > curr_node.score
      curr_node.right = Node.new(score, name)
      curr_node = curr_node.right
      puts "new node on right"
      puts curr_node
    
    end
    curr_node
  end
end