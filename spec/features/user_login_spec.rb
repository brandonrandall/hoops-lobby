require 'rails_helper'

describe 'user log in' do
  scenario "registered user can log in" do
    user = User.create(username: "brandon", password: "b")
    visit '/login'
    fill_in "Username", with: user.username
    fill_in "Password", with: "b"
    click_on "Log In"
    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to have_content("Hello brandon")
  end
end
