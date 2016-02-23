require 'sinatra'

# start a new game
get '/new_game' do
  game = Game.new  # returns the game_id
end

#join game
get '/join/:game_id' do
  game = # find game by :game_id
  game.add_player # todo
end

# make a move
get '/play/:game_id/:move' do
  game = # find game by :game_id
  game.board.insert_into_column(:move)
end