require_relative 'node.rb'

class BinarySearchTree

  attr_accessor :root

  def initialize 
    @root = nil
  end

  def insert(score,name)
    @root = insert_recursively(@root, score, name)
    puts "root is currently #{@root}"
  end

  def insert_recursively(curr_node, score, name)
    if @root == nil
      node = Node.new(score, name)
      @root = node
    end

    if curr_node == nil
      return Node.new(score, name)
    end
    
    if score < curr_node.score 
      if curr_node.left == nil 
        curr_node.left = Node.new(score, name)
      elsif 
        curr_node.left = insert_recursively(curr_node.left, score, name)
      end
    elsif score > curr_node.score
      if curr_node.right == nil
        curr_node.right = Node.new(score, name)
      elsif 
        curr_node.right = insert_recursively(curr_node.right, score, name)
      end
    end
    
    
    # # if score < curr_node.score 
    # #   curr_node.left = insert_recursively(curr_node.left, score, name)
    # #   curr_node = curr_node.left
    # #   puts "new node on left"
    # #   puts curr_node.left
    
    # elsif score > curr_node.score
    #   curr_node.right = Node.new(score, name)
    #   curr_node = curr_node.right
    #   puts "new node on right"
    #   puts curr_node
    
    # end
    curr_node
  end
end