require 'board'

module RubyConnect
  describe Board do
    let(:board) { subject }

    context 'when a move is still not done' do
      it 'is empty' do
        expect(board).to be_empty
      end
    end

    context 'when a move is done' do
      before { board.insert_into_column 1, :red }

      it 'is not empty' do
        expect(board).to_not be_empty
      end
    end

    context 'when all moves are done' do
      let(:full_board) do
        (1..Board::COLUMNS).each do |column|
          (1..Board::ROWS).each do
            board.insert_into_column column, :red
          end
        end
        board
      end

      it 'is full' do
        expect(full_board).to be_full
      end

      it 'raises an error if you try to make a move' do
        expect{ full_board.insert_into_column 1, :red }.to raise_error(ArgumentError)
      end
    end
  end
end
