# cette classe va nous permettre de lancer le jeu. 
# Elle va faire une boucle infinie de parties 
# (on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game.

require_relative 'game'
require_relative 'board'
require_relative 'show'
require_relative 'show'


class Application

	def perform

		my_game = Game.new #On lance une partie - on récupére les noms des joueurs. Joueur 1 joue avec les X et Joue avec les O.
		current_player = my_game.who_starts? #On détermine qui commence la partie

		show = Show.new
		show.display_board([" "," "," "," "," "," "," "," "," "])

		my_board = Board.new
		index = my_board.ask_for_move
		

		array = my_board.move(index,current_player.symbol)
		show.display_board(array)
		
		while (my_board.victory(array,my_board.count_turn) == "")
			who_plays = my_game.turn
			index = my_board.ask_for_move
			array = my_board.move(index,who_plays.symbol)
			show.display_board(array)
			victory = my_board.victory(array,my_board.count_turn)
		end

		if victory == "MATCH NUL"
			puts "MATCH NUL"
		else 
			puts "BRAVO #{who_plays.name} TU REMPORTES LA VICTOIRE !!!"
		end
		
		self.replay
	end

	def replay
		
		puts "Voulez vous rejouer [y]/[n]"
		choice = gets.chomp

		if choice == "y"
			self.perform
		else
			puts "MERCI - AUREVOIR"
		end
	end


end