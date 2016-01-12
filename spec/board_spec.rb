require 'board'
require 'tile'

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

  describe "#tile_board" do

    it "populates board with tiles" do
      board.tile_board
      board.board_array.each do |row|
        expect(row).to_not be_empty
        expect(row.all? {|tile| tile.is_a? Tile}).to eq(true)
      end

    end

  end
end

