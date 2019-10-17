require_relative 'board_case'


class Board
	attr_accessor :board, :count_turn, :board_values
	
	def initialize
		@position = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]
		@board = []
		@board_values = []
		@count_turn = 1
		
		9.times do |index|
			@board << BoardCase.new(@position[index]," ")
			@board_values << board[index].value
			
		end
			
	end


	def ask_for_move

		puts "\nChoisissez votre case parmis les cases disponibles"
		choice = gets.chomp
		puts "\nVous avez choisi la case #{choice}"
		index = @position.index(choice)

		return index
	
	end


	def move (index,current_symbol)

		@board_values[index] = current_symbol
		@count_turn += 1
		return @board_values

	end



	def victory(board_values,count_turn)

		victory = ""

		if @board_values[0] == @board_values[1] && @board_values[1] == @board_values[2] && @board_values[0] == @board_values[2] && @board_values[1] != " "
			victory = "VICTOIRE !!"
		elsif @board_values[3] == @board_values[4] && @board_values[4] == @board_values[5] && @board_values[3] == @board_values[5] && @board_values[4] != " "
			victory = "VICTOIRE !!"
		elsif @board_values[6] == @board_values[7] && @board_values[7] == @board_values[8] && @board_values[6] == @board_values[8] && @board_values[7] != " "
			victory = "VICTOIRE !!"
		elsif @board_values[0] == @board_values[3] && @board_values[3] == @board_values[6] && @board_values[0] == @board_values[6] && @board_values[3] != " "
			victory = "VICTOIRE !!"
		elsif @board_values[1] == @board_values[4] && @board_values[4] == @board_values[5] && @board_values[1] == @board_values[5] && @board_values[4] != " "
			victory = "VICTOIRE !!"
		elsif @board_values[6] == @board_values[7] && @board_values[7]== @board_values[8] && @board_values[6] == @board_values[8] && @board_values[7] != " "
			victory = "VICTOIRE !!"
		elsif @board_values[0] == @board_values[4] && @board_values[4]== @board_values[8] && @board_values[0] == @board_values[8] && @board_values[4] != " "
			victory = "VICTOIRE !!"
		elsif @board_values[6] == @board_values[4] && @board_values[4]== @board_values[2] && @board_values[6] == @board_values[2] && @board_values[4] != " "
			victory = "VICTOIRE !!"
		elsif count_turn == 10
			victory = "MATCH NUL"
		end
		
		return victory
	end

end