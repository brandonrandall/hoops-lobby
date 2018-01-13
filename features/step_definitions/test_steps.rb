Given(/^I am on the login page$/) do
        visit '/login'
end

When(/^I log in$/) do
        fill_in 'email', :with => 'b@r.com'
        fill_in 'password', :with => 'password'
        click_on 'submit'
end

Then(/^I should see "Welcome, Brandon"$/) do
        find(:xpath, "/home").click
        find('h1').text == 'Welcome, Brandon'
        find(button).text == 'View Teams'
end
