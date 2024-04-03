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

  # method_counter = 0

  def depth_of(score, curr_node = @root, depth = 0)
    if curr_node == nil
      return nil
    end

    if score == curr_node.score
      return depth
    
    elsif score < curr_node.score
      return depth_of(score, curr_node.left, depth + 1)
    
    elsif score > curr_node.score
      return depth_of(score, curr_node.right, depth + 1)
    end
    # curr_node = @root
    # if 
    # while curr_node.score != num
    #   curr_node =
  end

  def include?(score, curr_node = @root)
    if curr_node == nil 
      return nil
    end

    if score != curr_node.score
      if score < curr_node.score
        return include?(score, curr_node.left)
      else 
        return include?(score, curr_node.right)
      end
    elsif score == curr_node.score
      return true
    end
  end

  def max
    curr_node = @root
    while curr_node.right != nil
      curr_node = curr_node.right
    end
    return curr_node
  end

  def min
    curr_node = @root
    while curr_node.left != nil
      curr_node = curr_node.left
    end
    return curr_node
    # unless curr_node.left.left == nil
    #   curr_node = curr_node.left
    # else
    #   puts curr_node.left
    # end
  end

  def insert_recursively(curr_node, score, name, counter = 0)
    if @root == nil
      node = Node.new(score, name)
      @root = node
    end

    # method_counter + 1

    if curr_node == nil
      return Node.new(score, name)
    end
    
    if score < curr_node.score 
      if curr_node.left == nil 
        curr_node.left = Node.new(score, name)
        # curr_node.left.counter += 1
      elsif 
        curr_node.left = insert_recursively(curr_node.left, score, name)
        # unless curr_node.left.nil? then curr_node.left.counter += 1 end
      end
    elsif score > curr_node.score
      if curr_node.right == nil
        curr_node.right = Node.new(score, name)
      elsif 
        curr_node.right = insert_recursively(curr_node.right, score, name)
      end
    end

    # def include?(num)
    #   curr_node = @root
    #   while 
    # end
    
    
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