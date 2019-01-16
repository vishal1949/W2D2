require_relative 'piece'
require_relative 'nullPiece'
require 'byebug'
require_relative 'cursor'
require_relative 'display' 
class Board 

	attr_reader :grid

def initialize 
	@grid = Array.new(8) {Array.new(8)}
	start_rows = [0,1,6,7]
	@grid.each_with_index do |row, i|
		row.each_index do |j|
			pos = [i,j]
			if start_rows.include?(i)
				self[pos] = Piece.new(@grid, pos)
				# self.[]= (pos, Piece.new(@grid, pos))
			else 
				self[pos] = NullPiece.instance
				# self.[]= (pos, nil) 
			end
		end
	end
end



def [](pos) 
		row, col = pos
		@grid[row][col]
end

def []=(pos, val)
		# debugger
		row, col = pos
		@grid[row][col] = val
end


	# invalid moves: off grid,  space occupied by peice of same color
def move_piece(start_pos, end_pos)
	start_pos.each do |n|
		raise "not a position on the board" if n > 7 || n < 0
	end

	end_pos.each do |n|
		raise "not a position on the board" if n > 7 || n < 0
	end

	if !self[end_pos].is_a?(Piece) #check if piece is of same color
		raise "Cant move there"
	end 

	if self[start_pos].is_a?(Piece) 
		curr_piece = self[start_pos] #self[pos]  always = Piece instance
		self[end_pos] = curr_piece
		self[start_pos] = nil
	else 
	  raise "No piece there, try different position"
	end

	
end

def add_piece(piece, pos)
		
end

def check_mate?(color)

end

def in_check?(color)

end

def find_king(color)

end

def pieces
		
end

def dup

end

def move_piece!(color, start_pos, end_pos)

end








def valid_pos?(pos)
	pos.each { |el| return false if el > 7 || el < 0}
	true
end


private
 @sentinel == NullPiece

end