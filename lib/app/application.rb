require_relative 'game'
require_relative 'board'
require_relative 'show'
require_relative 'show'


class Application

	def perform

		system 'clear'
		my_game = Game.new #On lance une partie - on récupére les noms des joueurs. Joueur 1 joue avec les X et Joue avec les O.
		current_player = my_game.who_starts? #On détermine qui commence la partie

		show = Show.new #Initialise display of the game table
		system 'clear'
		show.display_board([" "," "," "," "," "," "," "," "," "]) #Initialise first array

		my_board = Board.new # Initialisation de la classe board
		index = my_board.ask_for_move #Creation de l'index pour determiner dans quelle case le joueur veut jouer.
		

		array = my_board.move(index,current_player.symbol) #On crée le tableau des entrée joueur
		system 'clear'
		show.display_board(array) # Affichage du tableau
		
		while (my_board.victory(array,my_board.count_turn) == "") # Tant que personne ne gagne ou que le tableau n'est pas plein
			who_plays = my_game.turn # Definir qui va jouer au prochain tour
			index = my_board.ask_for_move #Creation de l'index pour determiner dans quelle case le joueur veut jouer.
			array = my_board.move(index,who_plays.symbol) #On crée le tableau des entrée joueur
			system 'clear'
			show.display_board(array) # Affichage du tableau
			victory = my_board.victory(array,my_board.count_turn) # On verifie si l'on a un vainqueur
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