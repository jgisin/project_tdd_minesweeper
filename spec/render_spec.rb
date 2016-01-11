require 'render'

describe "Render" do 

  let(:render){ Render.new }

  describe "Init" do 

    it "creates a 10 x 10 empty array on init" do
      expect(render.board_array.length).to eq(10)
    end

  end

  
end