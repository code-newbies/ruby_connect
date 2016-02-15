module RubyConnect
  class Board
    attr_reader :grid
    COLUMNS = 7
    ROWS = 6

    def initialize
      @grid = Array.new(ROWS) { Array.new COLUMNS, nil }
    end

    def empty?
      grid.flatten.compact.empty?
    end

    def full?
      grid.flatten.all?
    end

    def insert_into_column(column, color)
      column -= 1
      grid[first_free_row_for column][column] = color
    end

    private

    def first_free_row_for(column)
      ROWS.times { |row| return row if grid[row][column].nil? }
      raise ArgumentError, "Column full"
    end
  end
end