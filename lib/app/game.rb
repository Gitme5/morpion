=begin

# c'est le jeu. Elle initialise tout, 
# lance une partie (qui se termine avec une victoire ou un nul), 
# permet de jouer un tour, de chercher si la partie est finie, etc.

cette classe s'occupe de gérer toute la partie. À l'initialisation elle 
crée 2 instances de Player, et 1 instance de Board.
Variables d'instance : tu peux lui rattacher les 2 players (sous forme d'un array), 
le Board, et des informations annexes comme "quel joueur doit jouer ?", "quel 
est le statut de la partie (en cours ? player1 a gagné ? etc.)", etc.
Méthodes : Game permet de jouer un tour (demande au joueur ce qu'il veut faire 
et rempli la case), s'occupe de finir la partie si un joueur a gagné et 
propose aux joueurs de faire une nouvelle partie ensuite.

=end
require_relative 'player'

class Game
#TO DO : la classe a plusieurs attr_accessor: 
#le current_player (égal à un objet Player), 
#le status (en cours, nul ou un objet Player s'il gagne), 
#le Board et un array contenant les 2 joueurs.
	#attr_accessor :current_player, :status, :board


	def initialize
		#TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
		@board = []
		#@status = ""

		puts "WELCOME TO THE MORPION"

		puts "\nEntrez le prénom du Joueur 1 : "
		joueur1 = gets.chomp
		player1 = Player.new(joueur1,"X")
		@board << player1
		puts "Welcome #{player1.name} tu joues avec les - X"

		puts "\nEntrez le prénom du Joueur 2 : "
		joueur2 = gets.chomp
		player2 = Player.new(joueur2,"O")
		@board << player2
		puts "Welcome #{player2.name} tu joues avec les - O"
		
	end


	def who_starts?

		puts "Lancé de dés pour determiner qui commence"

		turn = rand (1..2)
		if turn == 1 
			@current_player = @board[0]
			puts "#{@current_player.name} commence avec #{@current_player.symbol}"
		else
			@current_player = @board[1]			
			puts "#{@current_player.name} commence avec #{@current_player.symbol}"
		end
		#binding.pry
		@who_plays = @current_player
		return @current_player
		
	end

	
	def turn
	#TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
		if @who_plays == @board[0]
			puts "\nAu tour de #{@board[1].name} de jouer\n"
			@who_plays = @board[1]
		else
			puts "\nAu tour de #{@board[0].name} de jouer\n"
			@who_plays = @board[0]
		end

	end

	def new_round
	# TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
	end

	def game_end
	# TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
	end    



end
