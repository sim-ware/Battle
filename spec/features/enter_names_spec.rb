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
