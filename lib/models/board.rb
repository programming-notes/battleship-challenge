class Board
  def initialize
    x = 96
    @coordinates = Array.new(10) { [(x+=1).chr].concat(Array.new(10)) }
    @table = TTY::Table.new [' ', *(0..9)], @coordinates
  end

  def enemy_view
    @table.render :unicode, padding: [0, 1] do |r|
      r.border do
        left ' '
        mid_left ' '
        bottom_left ' '
        top ' '
        top_mid ' '
        top_left ' '
        top_right ' '
      end
      r.border.separator = :each_row
    end
  end
end