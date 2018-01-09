Given(/^I am on google UK$/) do
        visit '/'
end

Given(/^I search for cucumber$/) do
        fill_in 'gbqfq', :with => 'cucumber'
        click_on 'gbqfb'
end

Then(/^I should be able to access the cucumber wiki page$/) do
        find(:xpath, "//a[contains(.,'Cucumber - Wikipedia, the free encyclopedia')]").click
        find('h1').text == 'Cucumber'
end
