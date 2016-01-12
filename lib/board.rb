require_relative 'tile.rb'

class Board 
attr_accessor :board_array

  #initalize emtpy 10x10 board
  def initialize
    @board_array = [[],[],[],[],[],[],[],[],[],[]]
  end

  #randomly selects 9 mine locations on the board
  def mine_locations
    mine_array = []
    until mine_array.length == 9
      row = (1..9).to_a.sample
      column = (1..9).to_a.sample
        unless mine_array.include?([row,column])
          mine_array << [row, column]
        end
    end
    mine_array
  end

  #returns a board full of tiles
  def tile_board
    board_array.each do |row|
      9.times {row << Tile.new}
    end
  end

  def render
    board_array.each do |row|
      row.each do |cell|
        cell.get_display
        print "#{cell.display} "
      end
      print "\n"
    end
  end

  #changes the status of the mine_locations to @mine = true
  def set_mines
    mine_locations.each do |coord|
      @board_array[coord[0]][coord[1]].mine = true
    end
  end



end

board1 = Board.new
board1.tile_board
board1.set_mines
board1.render
