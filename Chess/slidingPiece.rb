

module SlidingPiece 
                    
    HORIZONTAL_DIRS = [[0,1],[0,-1],[1,0],[-1,0]]
    DIAGONAL_DIRS = [[1,1],[-1,-1],[-1,1],[1,-1]]
    # QUEEN_DIRS = HORIZONTAL_DIRS + DIAGONAL_DIRS

    def horizontal_dirs
        return HORIZONTAL_DIRS
    end

    def diagonal_dirs 
        DIAGONAL_DIRS
    end


    def change_pos(curr_piece_pos)
        valid_moves = []
        local_pos = curr_piece_pos
        until !valid_pos?(local_pos)
            x = arr[0] + local_pos[0]
            y = arr[1] + local_pos[1]
            local_pos = [x,y]
            valid_moves << local_pos if valid_pos?(local_pos)
        end
        valid_moves
    end

    def moves(curr_piece_pos) # arr
        
        case piece 
            when Rook
                HORIZONTAL_DIRS.each {|arr| return change_pos(curr_piece_pos)}
            when Bishop
                DIAGONAL_DIRS.each {|arr| return change_pos(curr_piece_pos)}
            when Queen
                QUEEN_DIRS.each {|arr| return change_pos(curr_piece_pos)}
        end
        valid_moves 
    end

    def moves
        move_dirs
    end

    def move_dirs
        raise "Not defined yet"
    end
end
