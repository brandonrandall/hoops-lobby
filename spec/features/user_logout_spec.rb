require 'rails_helper'

describe 'user log out' do
  scenario "logged in user can log out" do
    user = User.create(username: "brandon", password: "b")
    visit '/login'
    fill_in "Username", with: user.username
    fill_in "Password", with: "b"
    click_on "Log In"
    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to have_content("Hello brandon")
    click_on "Logout"
    expect(page).not_to have_content("Hello brandon")
    expect(page).to have_content("Not a member?")
  end
end
