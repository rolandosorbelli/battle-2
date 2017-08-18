class Game

	attr_accessor :player1, :player2, :turn

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
		@turn = 1
	end

	def attack
		if @turn == 1
			@player2.hp -= 20
			@turn = 2
		else
			@player1.hp -= 20
			@turn = 1
		end
	end

end