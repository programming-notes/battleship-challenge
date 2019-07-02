class Board
  attr_accessor :ships

  def initialize
    @coordinates = Array.new(10) { Array.new(10) }
    @table = TTY::Table.new (0..9), @coordinates
  end

  def friendly_view
    
  end

  def enemy_view
    table.render
  end
end