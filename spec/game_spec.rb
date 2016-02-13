require 'game'

describe Game do
  let(:game) { Game.new }

  it 'has an empty board' do
    expect(game.board).to have_attributes(size: 7)
  end

  it 'can add one piece to the board'
  it 'switches player turns after one move'

  describe '#winning_move?' do
    it 'in a vertical direction'
    it 'in a horizontal direction'
  end
end
