class Piece

    attr_reader :color

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def pos=(value)
        @board.grid[pos] = value
    end

    #track its position 

    #moves, but it needs to know what directions a piece can move in 
    #(diagonal, horizontally/vertically, both). 
    def moves
        place = []


    end
end





