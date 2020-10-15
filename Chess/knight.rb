require_relative "piece"
require_relative 'slideable'

class Knight < Piece
    attr_reader :color

    include Stepable

    def initialize(color, board, pos)
        super 
    end

    def move_diffs
        [1,2], [1,-2], [-1,2], [-1,-2], [2,1], [2,-1], [-2,1], [-2,-1]
    end

end