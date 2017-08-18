require './app.rb'

describe Player do

  context 'Player has a name' do

    it 'returns player name' do
      expect($game.player1.player).to eq "Rolando"
    end

  end

end
