require_relative '../../app.rb'

  feature 'Testing infrastructure' do

    scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content "Let's battle!"
    end

    scenario "Can enter names and see them on the screen" do
      sign_in_and_play
      expect(page).to have_content 'Rolando'
      expect(page).to have_content 'Will'
    end

    scenario "User can see opposition's HP" do
      sign_in_and_play
      expect(page).to have_content ' / HP: 100'
    end

    scenario "HP can change" do
      sign_in_and_play
      click_button("Attack!")
      expect(page).to have_content ' / HP: 80'
    end

    scenario "Checks if message is properly displayed" do
      sign_in_and_play
      click_button("Attack!")
      expect(page). to have_content '-20 HP!'
      expect(page). to have_content "Will has been attacked! It's super effective!"
    end

    scenario "Checks if the first round is 2" do
      sign_in_and_play
      click_button("Attack!")
      expect($game.turn).to eq(2)
    end

    scenario "Checks if the second round is 1" do
      sign_in_and_play
      click_button("Attack!")
      click_button("Attack!")
      expect($game.turn).to eq(1)
    end

  end
