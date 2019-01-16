class Knight:King 
    include steppingpiece
    king = king_dirs 
    knight = knight_dirs 


    ♞

    ♔

    def moves(curr_piece_pos) # arr
        valid_moves = []
        king.each do |arr| 
            valid_moves += change_pos(curr_piece_pos)
        end
        valid_moves 
    end

    def moves(curr_piece_pos) # arr
        valid_moves = []
        knight.each do |arr| 
            valid_moves += change_pos(curr_piece_pos)
        end
        valid_moves 
    end


end

