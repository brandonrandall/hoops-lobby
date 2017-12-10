require 'rails_helper'

describe 'user' do
  it 'can view nba teams' do
    spurs = "SAS Spurs"
    celtics = "BOS Celtics"

    visit '/'

    within(".nav-bar") do
      click_on "View Teams"
    end

    expect(current_path).to eq("/teams")
    expect(page).to have_content(spurs)
    expect(page).to have_content(celtics)
  end
end
