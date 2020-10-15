require_relative 'piece'

class Pawn < Piece
    attr_reader :color

    def initialize(color, board, pos)
        super 
    end

    def move_dirs
        forward_dir
    end

    def forward_dir
        @color == 'white' ? 1 : -1
    end

    def at_start_row?
        if pos.first == 1 && color == 'white'
            return true
        else pos.first == 6 && color == 'black'
            return true
        end
        false
    end

    def forward_steps
        @pos.last + move_dirs
    end
    
    def side_attacks
        if @board.grid[pos.first + 1, forward_steps].color != self.color
            return [pos.first + 1, forward_steps]
        elsif @board.grid[pos.first - 1, forward_steps].color != self.color
            return [pos.first -1, forward_steps]
        end
    end
end