require_relative 'tile.rb'
require 'byebug'

class Board 
attr_accessor :board_array

  #initalize emtpy 10x10 board
  def initialize
    @board_array = [[],[],[],[],[],[],[],[],[],[]]
    # tile_board
    # set_mines
  end

  #randomly selects 9 mine locations on the board
  def mine_locations
    mine_array = []
    until mine_array.length == 9
      row = (0..9).to_a.sample
      column = (0..9).to_a.sample
        unless mine_array.include?([row,column])
          mine_array << [row, column]
        end
    end
    mine_array
  end

  #returns a board full of tiles
  def tile_board
    @board_array.each_with_index do |row_array, row|
      10.times{|column| row_array << Tile.new(row,column)}
    end
  end

  def render
    @board_array.each_with_index do |row, row_index|
      row.each_with_index do |cell, col_index|
        get_nearby(row_index, col_index)
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

  def get_nearby(row, column)
    tile = @board_array[row][column]
    test_array.each do |coord|
      if tile.row > 0 && tile.column > 0
        if @board_array[tile.row + coord[0]][tile.column + coord[1]].mine? &&
           @board_array[tile.row + coord[0]][tile.column + coord[1]] != nil
          tile.nearby +=1
        end
      end
  end

  def reveal_empty
    test_loc = @board[@row + coord[0]][@column + coord[1]]
    test_array.each do |coord|
      unless test_loc.mine? || test_loc.revealed || test_loc.nearby > 0

        test_loc.revealed = true

      end
    end
  end

  end

  def test_array
    [[-1,1],[0,1],[1,1],[-1,0],[0,0],[1,0],[-1,-1],[0,-1],[1,-1]]
  end



end

board1 = Board.new
board1.tile_board
board1.set_mines

board1.render
