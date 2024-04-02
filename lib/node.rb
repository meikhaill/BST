class Node 
  attr_accessor :value, :left, :right, :score, :name

  def initialize(score, name)
    @name = name
    @score = score
    @left = nil
    @right = nil
  end

  # def score
  #   @score
  # end

  # def name
  #   @name
  # end

end