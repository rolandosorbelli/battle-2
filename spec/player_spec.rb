require './app.rb'

describe Player do

  context 'Player has a name' do

    it 'returns player name' do
      expect($player1).to eq "Rolando"
    end

  end

end
