require 'models/board'

module RubyConnect
  describe Board do
    let(:board) { subject }

    context 'when no player selected a column yet' do
      it 'is empty' do
        expect(board).to be_empty
      end
    end

    context 'when a player selects a column' do
      before { board.insert_into_column 1, :red }

      it 'is not empty' do
        expect(board).to_not be_empty
      end
    end

    context 'when every slot is taken up' do
      let(:full_board) do
        (1..Board::COLUMNS).each do |column|
          Board::ROWS.times { board.insert_into_column column, :red }
        end
        board
      end

      it 'is full' do
        expect(full_board).to be_full
      end

      it 'raises an error if you try to select a column' do
        expect{ full_board.insert_into_column 1, :red }.to raise_error(ColumnFullError)
      end
    end
  end
end
