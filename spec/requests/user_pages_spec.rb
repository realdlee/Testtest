require 'spec_helper'

describe "UserPages" do
  describe "GET /user_pages" do
    
    let(:user) { FactoryGirl.create :user }

    it "displays homepage to first-time visitor" do
      visit root_path
      page.should have_content("Welcome")
    end

    it "takes user to sign up page" do
      visit root_path
      click_link "Sign up"
      page.should have_content("Sign up")
    end
    
    it "allows user to sign up by filling out form" do
      visit new_user_registration_path
      fill_in "Email", :with => "test@example.com"
      fill_in "Password", :with => "password"
      fill_in "Password Confirmation", :with => "password"
      click_button "Sign up"
      current_path.should eq(deals_path)
    end

    it "allows a registered user to sign in" do
      visit new_user_session_path
      fill_in "Email", :with => user.email
      fill_in "Password", :with => user.password
      click_button "Sign in"
      page.should have_content("Active Deals")
      
      #REFACTOR
      click_link user.email
      click_link "Sign out"
      page.should have_content("Welcome")
    end
  end
end
