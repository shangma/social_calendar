Given(/^someone else likes Star Wars$/) do
  @timmy = Organiser.make!(:timmy)
  @interest = Interest.make!
  @timmy.interests << @interest
end

Given(/^I am on my profile page$/) do
  visit organiser_profile_path(@organiser)
end

When(/^I write Star Wars into the text box$/) do
  fill_in "interest_tag", :with => "Star Wars"
end

When(/^I click add$/) do
  click_button("Add")
end

Then(/^I should see Star Wars appear in my interests$/) do
  assert page.find('.interests').has_content?("Star Wars")
end

Given(/^I click on similar people$/) do
  click_link("Similar to You")
end

Then(/^I should see a similar person to me$/) do
  assert page.find('#name').has_content?("Timmy")
end

Then(/^they should have one similar interest$/) do
  pending # express the regexp above with the code you wish you had
end 