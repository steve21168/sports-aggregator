require 'spec_helper'
describe "the signin process", :type => :feature do
  before :each do
    User.create(email:"a@b.com", password: 'password', password_confirmation: 'password')
    visit '/users/sign_in'
    within(".container") do
      fill_in 'user_email', :with => 'a@b.com'
      fill_in 'user_password', :with => 'password'
    end
    click_button 'Log in'
  end
  it "when signed can see links on nav bar" do
    expect(page).to have_content 'MLB'
  end
  it "displays correct league when page is visited" do
    visit '/leagues/nba'
    expect(page).to have_css("h1#league-title", text: "NBA")
    visit '/leagues/mlb'
    expect(page).to have_css("h1#league-title", text: "MLB")
    visit '/leagues/nfl'
    expect(page).to have_css("h1#league-title", text: "NFL")
    visit '/leagues/nhl'
    expect(page).to have_css("h1#league-title", text: "NHL")
  end
end
