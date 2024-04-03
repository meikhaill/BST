class Node 
  attr_accessor :value, :left, :right, :score, :name, :counter

  def initialize(score, name)
    @name = name
    @score = score
    @left = nil
    @right = nil
    @counter = 0
  end

  # def score
  #   @score
  # end

  # def name
  #   @name
  # end

end