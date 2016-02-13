require 'sinatra'
require "sinatra/json"
require 'twilio-ruby'
require 'rest-client'

class Game
  attr_reader :board

  def initialize
    @board = []
  end
end
