def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Rolando')
  fill_in('player2', with: 'Will')
  click_button('Submit')
end
