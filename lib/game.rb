class Game

	attr_accessor :player1, :player2

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
	end

	def attack

		@player2.hp -= 20

	end

end