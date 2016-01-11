class Tile
  attr_accessor :mine, :flag, :revealed, :display

  def initalize
    @mine = false
    @flag = false
    @revealed = false
    @display = nil
  end

  def mine?
    @mine
  end

  def flag?
    @flag
  end

  def revealed?
    @revealed
  end

  def get_display
    if @mine
      @display = "*"
    end
    if !@revealed
      @display = "-"
    end
    if @flag
      @display = "F"
    end
  end


end