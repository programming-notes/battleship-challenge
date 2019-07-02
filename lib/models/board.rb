class Board
  attr_accessor :ships
  
  def initialize
    @coordinates = Array.new(10) { Array.new(10) }
  end
end