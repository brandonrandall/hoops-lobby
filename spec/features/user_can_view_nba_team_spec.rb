require 'rails_helper'

describe 'user' do
  it 'can view nba teams' do
    create(:user, last_name: "Doe").email

    spurs = "SAS Spurs"
    celtics = "BOS Celtics"

    visit '/'

    within(".nav-bar") do
      click_on "View Teams"
    end

    expect(current_path).to eq("/teams")

    # within(:css, "conferences-container") do
      expect(page).to have_content(spurs)
      expect(page).to have_content(celtics)
    #   within("western-conference") do
    #     expect(page).to have_content(spurs)
    #   end
    #   within("eastern-conference") do
          # expect(page).to have_content(celtics)
    #   end
    # end
    end
  end
