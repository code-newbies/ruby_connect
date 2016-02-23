require 'board'

module RubyConnect
  class Game
    attr_reader :board

    def initialize
      @board = Board.new
    end

    def done?
      board.full?
    end
  end
end