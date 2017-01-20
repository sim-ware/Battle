require 'spec_helper'

feature "Attacking" do

  scenario "Attacks Player 2 and returns confirmation" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Samir attacked Mittens!'
  end

  scenario 'Reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack!'

    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Samir attacked Mittens! Mittens:50HP'
  end
end
