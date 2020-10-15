require_relative 'slideable'
require_relative "piece"

class Rook < Piece
    attr_reader :color

    include Slideable

    def initialize(color, board, pos)
        super 
    end

    def move_dirs
        horizontal_dirs
    end
end