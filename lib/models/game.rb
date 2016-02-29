require 'errors/game_over_error'

module RubyConnect
  class Game
    attr_reader :board

    def initialize(player1, player2)
      @board = Board.new
      @winning_move = false
      @player1 = player1
      @player2 = player2
    end

    def done?
      board.full? || @winning_move
    end

    def make_move(column, color)
      raise GameOverError if done?
      board.insert_into_column column, color
      @winning_move = false # TODO: winning_move?
    end
  end
end