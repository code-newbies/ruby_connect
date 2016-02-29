module RubyConnect
  class Player
    attr_reader :game, :color

    def initialize(info = {})
      @name         = info[:name]
      @phone_number = info[:phone_number]
      @color        = info[:color]
      @game         = info[:game]
    end

    def make_move(column)
      game.make_move(column, color)
    end
  end
end