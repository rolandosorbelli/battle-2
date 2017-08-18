class Player

	attr_accessor :player, :hp

	def initialize(player, hp = 100)
		@player = player
		@hp = hp
	end
end
