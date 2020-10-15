module Slideable
    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

     def moves
        pos_moves =[]
        move_dirs.each do |dir|
            pos = @current_pos
            new_pos = grow_unblocked_moves_in_dir(pos, dir)
            while @board.valid_pos?(new_pos)
                if @board.grid[new_pos] == nil #if empty
                    pos_moves << new_pos
                    pos = new_pos
                elsif @board.grid[new_pos].color != self.color
                    pos_moves << new_pos
                    break
                end
            end
            pos = @current_pos
        end
        pos_moves
    end

    private
    def grow_unblocked_moves_in_dir(dx, dy)#wha this reperesent?? [1, 2], [2,3]
        x, y = dx 
        a, b = dy
        [x + a, y + b]
    end

    HORIZONTAL_DIRS = [[1,0], [0,1], [-1,0], [0,-1]]
    DIAGONAL_DIRS = [[1,1], [-1,-1], [1,-1], [-1,1]]

    def move_dirs
        raise NotImplementedError
    end

end