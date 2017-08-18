class Player
  # $hp1 = 100
  # $hp2 = 100
  # $player1
  # $player2

  attr_accessor :player, :hp

  def initialize(player, hp = 100)
    @player = player
    @hp = hp
  end
end
