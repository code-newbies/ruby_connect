module RubyConnect

  class GamePiece
    attr_reader :color, :board

    def initialize(color, board)
      @color = color
      @board = board
    end

    def drop_in(column)
      # need to figure out how to relate board...
      board.insert_into_column(column, color)
    end
  
  end

end