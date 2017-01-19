require 'spec_helper'

feature "Enter Names" do
  scenario "Users enter separate names and see them" do
    sign_in_and_play
    expect(page).to have_content 'Samir vs Mittens'
  end
end
