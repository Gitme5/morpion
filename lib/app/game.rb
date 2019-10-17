require_relative 'player'

class Game

	def initialize
		@board = []

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


end
