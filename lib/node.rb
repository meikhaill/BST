class Node 
  attr_accessor :value, :left, :right, :score, :name, :counter

  def initialize(score, name, counter = 0)
    @name = name
    @score = score
    @left = nil
    @right = nil
    @counter 
  end

  # def score
  #   @score
  # end

  # def name
  #   @name
  # end

end