require 'spec_helper'

describe "DealPages" do
  let(:user) { FactoryGirl.create :user }
  
  it "allows non-signed-in user to only see front page" do
    visit root_path
    click_link("Deals")
    page.should have_content("Sign in")
  end 
  
  it "shows form for user to enter deal info" do
    visit new_user_session_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Sign in"

    visit new_deal_path
    page.should have_content("Add a New Deal") 
    fill_in("Description", :with => "Lifetime Smoothies")
    fill_in("Merchant", :with => "Smoothie Dave")
    fill_in("Link", :with => "www.livingsocial.com/3")
    fill_in("Price", :with => 50)
    click_button("Post Deal")
    page.should have_content("Lifetime Smoothies")
    page.should have_content("50")
    
    # it "takes user to Deal Index page after successful posting" do
    # end

    # it "keeps user on form page if unsuccessful posting" do
    # end
  end
end
