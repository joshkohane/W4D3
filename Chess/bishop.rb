require_relative 'slideable'
require_relative "piece"

class Bishop < Piece
    attr_reader :color

    include Slideable

    def initialize(color, board, pos)
        super 
    end

    def move_dirs
        diagonal_dirs
    end

end