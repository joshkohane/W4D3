require_relative 'slideable'
require_relative 'piece'

class Queen < Piece
    attr_reader :color

    include Slideable

    def initialize(color, board, pos)
        super 
    end

    def move_dirs
        horizontal_dirs + diagonal_dirs
    end

end