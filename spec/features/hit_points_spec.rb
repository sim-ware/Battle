require 'spec_helper'

feature "Show Hit Points" do
  scenario "User can see Players 2's HP" do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
end
