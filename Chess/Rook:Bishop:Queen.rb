class Rook:Bishop:Queen
    include slidingPiece 
    horizontal = horizontal_dirs 
    diagonal = diagonal_dirs
    queen = horizontal + diagonal

    def symbol
        if ♜

            ♛  

            ♝ 

    end

    def moves(curr_piece_pos) # arr
        valid_moves = []
        queen.each do |arr| 
            valid_moves += change_pos(curr_piece_pos)
        end
        valid_moves 
    end
end
