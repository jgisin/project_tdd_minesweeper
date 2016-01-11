require 'board'

describe "Board" do 

  let(:board){ Board.new }

  describe "#initialize" do 

    it "creates a 10 x 10 empty array on init" do
      expect(board.board_array.length).to eq(10)
    end

  end

  
end