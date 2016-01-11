class Board 
attr_accessor :board_array

  def initialize
    @board_array = [[],[],[],[],[],[],[],[],[],[]]
  end

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



  

end