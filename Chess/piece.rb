
class Piece

    def initialize(board, pos)#color 
       # @color = 
        @board = board
        @pos = pos #array of 2 vals
    end

    def to_s
       "#{self.symbol}"
    end

    def empty?

    end

    def valid_moves

    end

    def pos=(val)
        
    end

    def symbol
        "♟"
    end

    private
    def move_into_check?(end_pos)

    end

end