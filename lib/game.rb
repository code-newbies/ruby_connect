require 'sinatra'
require "sinatra/json"

class Game
  attr_reader :board

  def initialize
    @board = []
  end
end
