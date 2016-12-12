require 'spec_helper'

feature "the signup process" do

  scenario "has a new user page" do
    visit new_user_url
    expect(page).to have_content "Create a Profile!"
  end

  feature "signing up a user" do
    before(:each) do
      visit new_user_url
      fill_in 'Username', :with => "username"
      fill_in 'Password', :with => "password"
      click_on "Create"
    end


    scenario "shows username on the homepage after signup" do
      expect(page).to have_content "username"
    end
  end

  feature "with an invalid user" do
    before(:each) do
      visit new_user_url
      fill_in 'Username', :with => "username"
      click_on "Create"
    end

    scenario "renders the new user page after failed signup" do
      expect(page).to have_content "Create a Profile!"
    end
  end

end
