def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Samir'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end
