require_relative 'node.rb'
# require_relative 'movies.txt'

class BinarySearchTree

  attr_accessor :root, :sorted_arr, :movies

  def initialize 
    @root = nil
    @sorted_arr = []
    @movies = []
    
  end


  def load_list
    File.foreach("movies.txt") do |line|
      score, title = line.chomp.split(", ")
      insert(score.to_i, title)
    end

    return @root

    # @movies.each do |movie|
    #   this.insert(movie)
    # end
  end

  def insert(score,name)
    @root = insert_recursively(@root, score, name)
    puts "root is currently #{@root}"
  end

  def sort_tree
    pre_sort_arr = @sorted_arr.map {|node| {score: node.score, name: node.name}}
    sorted_tree_arr = pre_sort_arr.sort_by { |node| node[:score]}
    return sorted_tree_arr

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

  def count_children(node, children = 0)
    
    # if node == nil
    #   return 0
    # end

    left_children = count_children(node.left, children + 1)
    right_children = count_children(node.right, children + 1)
    total_children = left_children + right_children

    return total_children
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
    puts "Maximum score: #{curr_node.score}, Name: #{curr_node.name}"
  end

  def min
    curr_node = @root
    while curr_node.left != nil
      curr_node = curr_node.left
    end
    puts "Minimum score: #{curr_node.score}, Name: #{curr_node.name}"
  end

  def insert_recursively(curr_node, score, name, counter = 0)
    if @root == nil
      @root = Node.new(score, name, counter)
      
    end

    # method_counter + 1

    if curr_node == nil
      return Node.new(score, name)
      puts "root is #{@root}"
    end
    
    if score < curr_node.score 
      if curr_node.left == nil 
        curr_node.left = Node.new(score, name)
        @sorted_arr.push(curr_node.left)
      
        
      elsif 
        curr_node.counter + 1
        curr_node.left = insert_recursively(curr_node.left, score, name)
        # unless curr_node.left.nil? then curr_node.left.counter += 1 end
      end
    elsif score > curr_node.score
      if curr_node.right == nil
        curr_node.right = Node.new(score, name)
        @sorted_arr.push(curr_node.right)
       
      elsif 
        curr_node.counter + 1
        curr_node.right = insert_recursively(curr_node.right, score, name, counter)
        # unless curr_node.right.nil? then curr_node.right.counter += 1 end
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