class Tile
  attr_accessor :mine, :flag, :revealed, :display, :nearby, :row, :column

  def initialize(row, column)
    @row = row
    @column = column
    @nearby = 0
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
    # if @revealed
    #   if @mine was true show "*"
    #   else show the @nearby
    #     if @nearby is 0 display " "  
  end




end