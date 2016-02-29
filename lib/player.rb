module RubyConnect
  class Player
    def initialize(info = {})
      @name         = info[:name]
      @phone_number = info[:phone_number]
      @color        = info[:color]
    end

    def move(game, column)
      game.make_move(column, @color)
    end
  end
end