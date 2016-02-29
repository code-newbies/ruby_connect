require 'game'
require 'board'

module RubyConnect
  describe Game do
    let(:player1) { Player.new }
    let(:player2) { Player.new }
    let(:game) { Game.new(player1, player2) }

    it 'can add one piece to the board' do
      expect{ game.make_move(1, :red) }.to change{ game.board.moves_done }.from(0).to(1)
    end

    context 'when the grid is full' do
      before do
        (1..Board::COLUMNS).each do |column|
          Board::ROWS.times { game.make_move column, :red }
        end
      end

      it 'then the game is done' do
        expect(game).to be_done
      end
    end

    it 'switches player turns after one move'

    describe '#winning_move?' do
      it 'in a vertical direction'
      it 'in a horizontal direction'
    end
  end
end