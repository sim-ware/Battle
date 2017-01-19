require 'spec_helper'

feature "Attack Player 2" do
  scenario "Attacks Player 2 and returns confirmation" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Samir attacked Mittens!'
  end
end
