require 'tiles'

describe "Tiles" do

  let(:tile){ Tiles.new }

  describe "#get_display" do

    it "changes the display to * when revealed and a mine" do
      tile.mine = true
      tile.revealed = true

      tile.get_display

      expect(tile.display).to eq("*")
    end

    it "changes the display to - when not revealed" do
      tile.get_display
      expect(tile.display).to eq("-")
    end

    it "changes the display to F when not revealed and flagged" do
      tile.flag = true
      tile.get_display
      expect(tile.display).to eq("F")
    end

  end

end