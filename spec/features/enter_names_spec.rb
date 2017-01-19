require 'spec_helper'

feature "Enter Names" do
  scenario "Users enter separate names and see them" do
    visit('/')
    fill_in :player_1_name, with: 'Samir'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Samir vs Mittens'
  end
end

feature "Show Hit Points" do
  scenario "User can see Players 2's HP" do
    visit('/')
    fill_in :player_1_name, with: 'Samir'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Mittens: 60HP'
  end
end
