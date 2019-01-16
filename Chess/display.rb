require_relative 'board'
require 'colorize'
require_relative 'cursor'
require 'byebug'

class Display

	def initialize(board)
		@board = board
		@cursor = Cursor.new([6,3], board)
	end

	def render
		
		i = 0
		@board.grid.each do |arr|
			arr.each_with_index do |piece, j|
				if @cursor.cursor_pos == [i,j]
					print piece.to_s.colorize(:background => :red)
				elsif i.even? && j.even? || i.odd? && j.odd?
					print piece.to_s.colorize(:background => :black)
				else                                 
					print piece.to_s.colorize(:background => :white)
				end
				 
			end
			print "\n"
			i += 1
		end
		return nil
	end

    def loop_for_cursor_render
        while true
						render
						old_pos = @cursor.cursor_pos
						new_pos = @cursor.get_input
						# if !@board.valid_pos?(new_pos)
						# 	raise 'not on board'
						# end
						if new_pos == old_pos 
							# display possible move end locations only, not full path
						end
        end
    end

end