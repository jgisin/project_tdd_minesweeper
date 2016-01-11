require 'board'

describe "Board" do 

  let(:board){ Board.new }

  describe "#initialize" do 

    it "creates a 10 x 10 empty array on init" do
      expect(board.board_array.length).to eq(10)
    end

  end

  describe "#mine_locations" do

    it "creates 9 random mine locations" do

      expect(board.mine_locations.length).to eq(9)

    end


  end

  
end

