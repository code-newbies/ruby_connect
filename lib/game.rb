module RubyConnect
  class Game
    attr_reader :board

    def initialize
      @board = Board.new
    end

    def is_done?
      board.is_full?
    end
  end
end