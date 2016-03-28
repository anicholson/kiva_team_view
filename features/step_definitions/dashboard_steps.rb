include Capybara::DSL

Given(/^I am logged in$/) do
  true
end

When(/^I visit the root path$/) do
  visit '/'
end

Then(/^I should be on the Dashboard page$/) do
  expect(DashboardPage.new(page).matches?).to eq(true)
end
