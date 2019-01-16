require_relative 'piece'
require 'singleton'

class NullPiece < Piece

    include Singleton

    def initialize#color 
        # @color = 
         @pos = nil #array of 2 vals
     end
     

    def moves
    end

    def symbol
        return " "
    end

end