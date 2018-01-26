require 'rails_helper'

describe 'user creation' do
  scenario "user can be created" do
    visit new_user_path
    fill_in "Username", with: "monkey"
    fill_in "Password", with: "b"
    click_on "Register"
    expect(current_path).to eq("/teams")
    expect(page).to have_content("Hello monkey")
  end
end
