require 'game'

module RubyConnect
  describe Game do
    let(:game) { subject }

    it 'can add one piece to the board'
    it 'switches player turns after one move'

    describe '#winning_move?' do
      it 'in a vertical direction'
      it 'in a horizontal direction'
    end
  end
end