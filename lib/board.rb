module RubyConnect
  class Board
    attr_reader :grid
    ROWS    = 6
    COLUMNS = 7

    def initialize
      @grid = Array.new(COLUMNS) { Array.new ROWS, nil }
    end

    def empty?
      slots.compact.empty?
    end

    def full?
      slots.all?
    end

    def insert_into_column(column, color)
      column -= 1
      row = first_open_slot column
      grid[column][row] = color
    end

    private

    def first_open_slot(column)
      grid[column].index(nil) || raise(ArgumentError, "Column full")
    end

    def slots
      grid.flatten
      end
  end

end