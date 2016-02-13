require 'sinatra'

class Game
  attr_reader :board

  def initialize
    @board = []
  end
end
