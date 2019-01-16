

module SteppingPiece

    KING_DIRS = [[0,1],[0,-1],[1,0],[-1,0]]
    KNIGHT_DIRS = [[-2,-1], [-2,1], [2,1], [2,-1], [1,2], [1,-2],[-1,2], [-1,-2] ]
    
    

    def king_dirs
        return KING_DIRS
    end
    
    def knight_dirs
        return KNIGHT_DIRS
    end


    def valid_pos?(pos)
        pos.each { |el| return false if el > 7 || el < 0 }
    end

    def moves(curr_piece_pos) # arr
        
        valid_moves = []
        case piece 
            when King
            KING_DIRS.each do |arr|
                local_pos = curr_piece_pos
                until !valid_pos?(local_pos)
                    x = arr[0] + local_pos[0]
                    y = arr[1] + local_pos[1]
                    local_pos = [x,y]
                    valid_moves << local_pos if valid_pos?(local_pos)
                end
            end
        when Knight
            KNIGHT_DIRS.each do |arr|
                local_pos = curr_piece_pos
                until !valid_pos?(local_pos)
                    x = arr[0] + local_pos[0]
                    y = arr[1] + local_pos[1]
                    local_pos = [x,y]
                    valid_moves << local_pos if valid_pos?(local_pos)
                end
            end
        end
        valid_moves
    end


end