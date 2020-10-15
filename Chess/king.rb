require_relative 'slideable'
require_relative 'piece'

class King < Piece
    attr_reader :color

    include Stepable

    def initialize(color, board, pos)
        super 
    end

    def move_diffs
        [[1,1], [-1,-1], [1,-1], [-1,1], [0,1], [1,0], [0,-1], [-1,0]]
    end

end