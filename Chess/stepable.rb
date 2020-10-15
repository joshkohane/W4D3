module Stepable
    def moves
        pos_moves = []
        move_diffs.each do |dir|
            new_pos = [@current_pos[0] + dir[0], @current_pos[1] + dir[1]]
            if @board.valid_pos?(new_pos)
                if @board.grid[new_pos] == nil || @board.grid[new_pos].color != self.color
                    pos_moves << new_pos
                end
            end
        end
        pos_moves
    end

    private

    def move_diffs
    end
end