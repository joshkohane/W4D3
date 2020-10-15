require_relative 'piece.rb'

class Board
    attr_reader :grid

    def self.original_setting(matrix)
        matrix.each_with_index do |row, i|
            if i == 0|| i == 1 || i == 6 || i == 7
                row.each_with_index {|ele, j| matrix[i][j] = Piece.new}
            end
        end

    end

    def initialize
        @grid = Array.new(8) {Array.new(8)}
        Board.original_setting(@grid)
    end


    def [](pos)# need douoble []
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, piece)
        @grid[pos.first][pos.last] = piece
    end

    def valid_pos?(pos)
        pos.each {|ele| return false if ele < 0 || ele > 7}
        true
    end

    def move_piece(start_pos, end_pos)
        value = self[start_pos]
        raise "no piece at starting position" if value.nil? #if there is no piece
        raise "invalid end position" if !self[end_pos].nil? #if there is some value already
        raise "position not on board" if !valid_pos?(start_pos) || !valid_pos(end_pos)

        self[end_pos] = value
        self[start_pos] = nil
    
    end

end